class TalksController < ApplicationController
  before_action :set_talk, only: %i[show edit update destroy]

  # GET /talks
  def index
    @talks = Talk.by_start_time
  end

  # GET /talks/1
  def show
  end

  # GET /talks/new
  def new
    @talk = Talk.new
    @speakers = Speaker.all
  end

  # GET /talks/1/edit
  def edit
  end

  # POST /talks
  def create
    @talk = Talk.new(talk_params)
    if @talk.save
      id = @talk.id
      send_time = 20.minutes.before(@talk.start_time)
      TalkReminderNotificationJob.set(wait_until: send_time).perform_later(id) # will be moved!!! TODO: update once Users have Talk association
      redirect_to @talk, notice: "Talk was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /talks/1
  def update
    if @talk.update(talk_params)
       id = @talk.id
       TalkUpdateNotificationJob.perform_later(id) #TODO: update TalkUpdateNotification once Users have Talk association
      redirect_to @talk, notice: "Talk was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /talks/1
  def destroy
    @talk.destroy
    redirect_to talks_url, status: :see_other, notice: "Talk was successfully deleted."
  end

  private

  # Use with before_action callback for shared use.
  def set_talk
    @talk = Talk.find(params[:id])
  end

  # Only allow a list of trusted parameters.
  def talk_params
    params.require(:talk).permit(:title, :description, :start_time, :location, :talk_format, :talk_track, :duration, speaker_ids: [])
  end
end
