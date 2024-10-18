class TalksUsersController < ApplicationController
  include ActionView::RecordIdentifier

  before_action :authenticate_user!
  before_action :set_talk, only: %i[create destroy]

  def index
    @talks_by_day = current_user.talks.includes(:speakers, :tags)
    .order(:start_time)
    .group_by { |talk| talk.start_time.to_date }
  end

  def create
    @user_talk = TalkUser.new(talk: @talk, user: current_user)

    if @user_talk.save  
      respond_to do |format|
        format.turbo_stream {
          render turbo_stream: turbo_stream.replace(dom_id(@talk, :talks_users), 
          partial: "shared/add_remove_button", locals: {talk: @talk})
        }
      end
    end
  end

  def destroy
    @talk.users.delete(current_user)

    respond_to do |format|
      if @talk.save
        format.turbo_stream {
          render turbo_stream: turbo_stream.replace(dom_id(@talk, :talks_users), 
          partial: "shared/add_remove_button", locals: {talk: @talk})
       }
      end
    end
  end

  private

  def set_talk
    @talk = Talk.find(params[:talk_id])
  end
end
