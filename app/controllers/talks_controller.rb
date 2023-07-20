class TalksController < ApplicationController
  before_action :set_talk, only: %i[ show edit update destroy ]

  # GET /talks
  def index
    @talks = Talk.all
    @speakers = Speaker.all
  end

  # GET /talks/1
  def show
  end

  # GET /talks/new
  def new
    @talk = Talk.new
  end

  # GET /talks/1/edit
  def edit
  end

  # POST /talks
  def create
    @talk = Talk.new(talk_params)

    respond_to do |format|
      if @talk.save
        format.html { redirect_to talk_url(@talk), notice: "Talk was successfully created." }
        format.json { render :show, status: :created, location: @talk }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @talk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /talks/1
  def update
    if @talk.update(talk_params)
      redirect_to talk_url(@talk), notice: "Talk was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /talks/1
  def destroy
    @talk.destroy
    redirect_to talks_url, notice: "Talk was successfully destroyed."
  end

  private
    # Use with before_action callback for shared use.
    def set_talk
      @talk = Talk.find(params[:id])
    end

    # Only allow a list of trusted parameters.
    def talk_params
      params.require(:talk).permit(:title, :description, :start_time, :location, :talk_format, :talk_track, :duration)
    end
end
