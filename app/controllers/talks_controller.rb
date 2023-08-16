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
    debugger
    @talk = Talk.new(talk_params)
    # should probably remove tags from talk_params
    # create_or_delete_talk_tags(@talk, params[:talk][:tags])
    # create_or_delete_talk_tags(@talk, tags_params)
    create_new_tags!
    # params[:talk][:tags] is a string of comma separated tags
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
    # params.require(:talk).permit(:title, :description, :start_time, :location, :talk_format, :talk_track, :duration, :tags)
    params.require(:talk).permit(:title, :description, :start_time, :location, :talk_format, :talk_track, :duration)
  end

  def tags_params
    params[:talk][:tags]
  end

  # def create_or_delete_talk_tags(talk, tags)
  #   talk.tags_talks.destroy_all
  #   tags = tags.strip.split(',')
  #   tags.each do |tag|
  #     talk.tags << Tag.find_or_create_by(tag_name: tag)
  #   end
  # end
  def create_new_tags!
    incoming_tags.each do |tag_name|
      # new_tag = Tag.find_or_create_by(tag_name: tag_name)
      @talk.tags.build(tag_name: tag_name)
      # building before saving so that we can use the tag_id in the join table
    end

    # tags.each do |tag|
    #   talk.tags << Tag.find_or_create_by(tag_name: tag)
    # end
  end

  def incoming_tags
    tags_params.split(',').map(&:strip)
  end

  def tags_to_add(talk)
    incoming_tags - talk.tags.pluck(:tag_name)
  end
end
