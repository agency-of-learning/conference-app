class TalksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_talk, only: %i[show]

  # GET /talks
  def index
    talk = Talk.includes(:speakers, :tags)
    @day_one_talks = talk.day_one.in_order
    @day_two_talks = talk.day_two.in_order
    @day_three_talks = talk.day_three.in_order
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
