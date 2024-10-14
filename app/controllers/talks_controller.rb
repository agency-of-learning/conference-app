class TalksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_talk, only: %i[show]

  # GET /talks
  def index
    @talks_by_day = Talk.includes(:speakers, :tags)
    .order(:start_time)
    .group_by { |talk| talk.start_time.to_date }
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
