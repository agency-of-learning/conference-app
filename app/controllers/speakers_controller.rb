class SpeakersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_speaker, only: %i[show]

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
end
