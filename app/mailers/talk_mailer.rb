class TalkMailer < ApplicationMailer
  before_action :set_talk

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
end
