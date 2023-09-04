require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '10m' do
    talks = Talk.happening_today.in_thirty_minutes.includes(:users) 
    #talks.each {|talk| Talk::FanOutToUsersJob.perform_later(talk)} -> ORIGINAL
    
    # note: instead of checking each individual user in an enqueued job, 
    #       will skip "FanOutToUsersJob" and only begin enqueueing jobs 
    #       for users who have not been notified for that talk

    talks.each do |talk|
        talk.unnotified_users.each do |user| #ew nested loop, but it's already a nested loop anyways right?
            Talk::ScheduleUserReminderJob.perform_later(user, talk)
        end 
    end 
end 