class TalksUsersController < ApplicationController
  #include ActionView::RecordIdentifier

  before_action :authenticate_user!
  before_action :set_talk, only: %i[create]

  def index
    @day_one_talks = current_user.talks.day_one.in_order
    @day_two_talks = current_user.talks.day_two.in_order
    @day_three_talks = current_user.talks.day_three.in_order
    
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

