class TalksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_talk, only: %i[show]

  # GET /talks
  def index
    conference_start_date = Date.new(2023, 10, 18) # Start of conference
    conference_end_date = Date.new(2023, 10, 20) # End of conference

    talks_by_day = Talk.includes(:speakers, :tags)
    .where(start_time: conference_start_date.beginning_of_day..conference_end_date.end_of_day)
    .order(:start_time)
    .group_by { |talk| talk.start_time.to_date }

    @day_one_talks = talks_by_day[conference_start_date] || []
    @day_two_talks = talks_by_day[conference_start_date + 1.day] || []
    @day_three_talks = talks_by_day[conference_start_date + 2.day] || []
  end

  # GET /talks/1
  def show
  end


  private

  def set_talk
    @talk = Talk.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to talks_url, notice: "Record not found"
  end
end
