class TalksController < ApplicationController
  before_action :set_talk, only: %i[show edit update destroy]

  # GET /talks
  def index
    @day_one_talks = Talk.day_one.in_order
    @day_two_talks = Talk.day_two.in_order
    @day_three_talks = Talk.day_three.in_order
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
    @talk = Talk.new(talk_params.except(:tags))
    create_or_delete_talk_tags(@talk, params[:talk][:tags])
    if @talk.save
      redirect_to @talk, notice: "Talk was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /talks/1
  def update
    create_or_delete_talk_tags(@talk, params[:talk][:tags])
    if @talk.update(talk_params.except(:tags))
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

  def set_talk
    @talk = Talk.find(params[:id])
  end

  def talk_params
    params.require(:talk).permit(:title, :description, :start_time, :location, :talk_format, :talk_track, :duration)
  end

end
