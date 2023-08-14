require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.cron '00 0 * * *' do
    talks = Talk.happening_today 
    talks.each {|talk| Talk::FanOutToUsersJob.perform_now(talk)}
end 