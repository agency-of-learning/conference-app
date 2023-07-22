class SpeakersController < ApplicationController
  before_action :set_speaker, only: %i[show edit update destroy]

  # GET /speakers
  def index
    @speakers = Speaker.all
  end

  # GET /speakers/1
  def show
  end

  # GET /speakers/new
  def new
    @speaker = Speaker.new
  end

  # GET /speakers/1/edit
  def edit
  end

  # POST /speakers
  def create
    @speaker = Speaker.new(speaker_params)

    if @speaker.save
      redirect_to @speaker, notice: "Speaker was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /speakers/1
  def update
    if @speaker.update(speaker_params)
      redirect_to @speaker, notice: "Speaker was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /speakers/1
  def destroy
    @speaker.destroy
    redirect_to speakers_url, status: :see_other, notice: "Speaker was successfully deleted."
  end

  private

  # Use with before_action callback for shared use.
  def set_speaker
    @speaker = Speaker.find(params[:id])
  end

  # Only allow a list of trusted parameters.
  def speaker_params
    params.require(:speaker).permit(:name, :title, :bio, :image_filename)
  end
end
