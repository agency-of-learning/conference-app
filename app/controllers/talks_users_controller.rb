class TalksUsersController < ApplicationController
  #include ActionView::RecordIdentifier

  before_action :authenticate_user!
  before_action :set_talk, only: %i[create]

  def index
    @talks = Talk.user_talks(current_user).by_start_time
  end

  def create
    @user_talk = TalkUser.new(talk: @talk, user: current_user)

    if @user_talk.save  
      redirect_to @talk
    end
  end

  def destroy
    @talk_user = TalkUser.find(params[:id])
    
    if @talk_user.destroy
      redirect_to @talk_user.talk
    end
  end

  private

  def set_talk
    @talk = Talk.find(params[:talk_id])
  end

end

