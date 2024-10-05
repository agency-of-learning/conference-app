class TalksUsersController < ApplicationController
  include ActionView::RecordIdentifier

  before_action :authenticate_user!
  before_action :set_talk, only: %i[create destroy]

  def index
    conference_start_date = Date.new(2023, 10, 18) # Start of conference
    conference_end_date = Date.new(2023, 10, 20) # End of conference

    talks_by_day = current_user.talks.includes(:speakers, :tags)
    .where(start_time: conference_start_date.beginning_of_day..conference_end_date.end_of_day)
    .order(:start_time)
    .group_by { |talk| talk.start_time.to_date }

    @day_one_talks_upcoming = (talks_by_day[conference_start_date] || [])
     .select { |talk| talk.end_time >= Time.current }
    @day_two_talks_upcomimg = (talks_by_day[conference_start_date + 1.day] || [])
     .select { |talk| talk.end_time >= Time.current } 
    @day_three_talks_upcoming = (talks_by_day[conference_start_date + 2.day] || [])
     .select { |talk| talk.end_time >= Time.current } || [] 

    @day_one_talks_past = (talks_by_day[conference_start_date] || [])
     .select { |talk| talk.end_time < Time.current } 
    @day_two_talks_past = (talks_by_day[conference_start_date + 1.day] || [])
     .select { |talk| talk.end_time < Time.current } 
    @day_three_talks_past = (talks_by_day[conference_start_date + 2.day] || [])
     .select { |talk| talk.end_time < Time.current } 

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

