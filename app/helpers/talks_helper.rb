module TalksHelper
  def day_and_time(talk)
    talk.start_time.strftime("%A %l %P")
  end
end
