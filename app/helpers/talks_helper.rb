module TalksHelper
  def day_and_time(talk)
    talk.start_time.to_fs(:day_and_hour)
  end

  def talk_select_text(record)
    record.selected_by?(current_user) ? "Remove" : "Add"
  end
end
