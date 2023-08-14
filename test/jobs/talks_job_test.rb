require "test_helper"
#fanouttousers
#scheduleuserreminder
#talkreminder

#there are two events today (talk, and workshop, keynote is tomorrow)
#user 1 is going to keynote and talk
#user 2 is going to keynote and workshop 
#
class TalksJobTest < ActiveJob::TestCase
  include ActiveJob::TestHelper
   test "scheduler fans out first job to talks happening today" do
      assert_enqueued_jobs 0
      talks = Talk.happening_today 
      talks.each {|talk| Talk::FanOutToUsersJob.perform_later(talk)} #perform later to ensure first jobs are enqueued
      assert_enqueued_jobs 2
      assert talks.count == enqueued_jobs.size
      assert_equal(0, Notification.count)
   end

   test "for each talk, fan out to schedule notifications for affected users" do 
      assert_enqueued_jobs 0
      talks = Talk.happening_today 
      talks.each do |talk| #imitates scheduler
        talk.users.each do |user| #imitates 1st job, FanOutToUsersJob
           Talk::ScheduleUserReminderJob.perform_later(user, talk) #perform later in order to enqueue 2nd job
        end 
      end  # move onto 2nd job 
      assert_enqueued_jobs 2
      assert_equal(0, Notification.count)
   end 

   test "for each of the active reminder notification job, ensure they are enqueued correctly" do 
    assert_enqueued_jobs 0
    talks = Talk.happening_today 
    talks.each do |talk| #imitates scheduler
        talk.users.each do |user| #imitates 1st job, FanOutToUsersJob
           Talk::ScheduleUserReminderJob.perform_now(user, talk) #perform now in order move on to enqueue 3rd job
           #probably not great to do assertions here right? idk
           assert_enqueued_with(job: Talk::TalkReminderNotificationJob, args: [user, talk], queue: 'default', at:talk.start_time - 20.minutes)
        end 
      end
      assert_enqueued_jobs 2 
      assert_equal(0, Notification.count)
   end
   
   test "assert that the job performs at the correct time and delivers notifications " do 
      assert_enqueued_jobs 0
      talks = Talk.happening_today 
      talks.each {|talk| Talk::FanOutToUsersJob.perform_now(talk)} #Go through whole flow
      #flow results with last job in cycle enqueued:
      assert_enqueued_with(job: Talk::TalkReminderNotificationJob)
      assert_equal(0, Notification.count)
      #IDK how to test a job executing at a certain time without having to manually use "perform_enqueued_jobs"
      perform_enqueued_jobs 
      #admin and attendee will have 2 notifications each
      assert_equal(2, Notification.count)
      #since attendee has receive_email_notifications set to true, only they will receive emails for their notifications
      assert_equal(1, ActionMailer::Base.deliveries.size) 
      first_email = ActionMailer::Base.deliveries.first
      last_email = ActionMailer::Base.deliveries.last

      assert_equal(["attendee@attendee.com"], first_email.to)
      assert_equal(["attendee@attendee.com"], last_email.to)
   end 
end
