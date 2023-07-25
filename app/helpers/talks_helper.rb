module TalksHelper
  def day_and_time(talk)
    talk.start_time.to_s(:day_and_hour)
  end
end
