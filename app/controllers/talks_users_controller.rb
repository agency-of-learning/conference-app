class TalksUsersController < ApplicationController
  include ActionView::RecordIdentifier

  before_action :authenticate_user!
  before_action :set_talk, only: %i[create destroy]

  def index
    talks = current_user.talks.includes(:speakers, :tags)
    @day_one_talks_upcoming = talks.day_one.upcoming.in_order
    @day_two_talks_upcomimg = talks.day_two.upcoming.in_order
    @day_three_talks_upcoming = talks.day_three.upcoming.in_order

    @day_one_talks_past = talks.day_one.past.in_order
    @day_two_talks_past = talks.day_two.past.in_order
    @day_three_talks_past = talks.day_three.past.in_order
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

