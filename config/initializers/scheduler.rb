require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '10m' do
    talks = Talk.happening_today.in_thirty_minutes.includes(:users) 
    talks.each {|talk| Talk::FanOutToUsersJob.perform_later(talk)}
end 