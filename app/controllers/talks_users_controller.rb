class TalksUsersController < ApplicationController
  #include ActionView::RecordIdentifier

  before_action :authenticate_user!
  before_action :set_talk, only: %i[create]

  def index 
    @day_one_talks_upcoming = current_user.talks.day_one.upcoming.in_order
    @day_two_talks_upcomimg = current_user.talks.day_two.upcoming.in_order
    @day_three_talks_upcoming = current_user.talks.day_three.upcoming.in_order

    @day_one_talks_past = current_user.talks.day_one.past.in_order
    @day_two_talks_past = current_user.talks.day_two.past.in_order
    @day_three_talks_past = current_user.talks.day_three.past.in_order
    
  end

  def create
    @user_talk = TalkUser.new(talk: @talk, user: current_user)

    if @user_talk.save  
      redirect_to talks_path
    end
  end

  def destroy
    @talk_user = TalkUser.find(params[:id])
    
    if @talk_user.destroy
      redirect_to talks_path
    end
  end

  private

  def set_talk
    @talk = Talk.find(params[:talk_id])
  end

end

