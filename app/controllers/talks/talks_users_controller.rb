class Talks::TalksUsersController < ApplicationController
  include ActionView::RecordIdentifier

  before_action :authenticate_user!
  before_action :set_talk, only: %i[update]

  def update
    if @talk.selected_by?(current_user)
      @talk.un_select(current_user)
    else
      @talk.select(current_user)
    end

    render partial: "talks/talk", locals: {talk: @talk}
  end

  def my_schedule
    @talks = Talk.my_schedule(current_user)
  end

  private

  def set_talk
    @talk = Talk.find(params[:talk_id])
  end

end
