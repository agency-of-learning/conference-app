class TalkMailer < ApplicationMailer
  before_action :set_talk, :set_changes

  layout "mailer"

  def update_for_talk
    mail(subject: "#{@talk.title} has changed")
  end

  def remind_for_upcoming_talk
    mail(subject: "#{@talk.title} is starting soon!")
  end

  private

  def set_talk
    @talk = params[:talk]
  end

  def set_changes 
    if params[:changes]
        @changes = params[:changes]
    end 
  end 
end
