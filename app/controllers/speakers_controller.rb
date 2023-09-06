class SpeakersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_speaker, only: %i[show edit update destroy]

  # GET /speakers/1
  def show
  end

  private

  # Use with before_action callback for shared use.
  def set_speaker
    @speaker = Speaker.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    redirect_to talks_url, notice: "Record not found"
  end

  # Only allow a list of trusted parameters.
  def speaker_params
    params.require(:speaker).permit(:name, :title, :bio, :image_filename)
  end
end
