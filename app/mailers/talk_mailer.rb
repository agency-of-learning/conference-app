class TalkMailer < ApplicationMailer
  before_action :set_talk, :set_changes
  before_action :set_talk, :set_changes

  layout "mailer"

  def remind_for_upcoming_talk
    mail(subject: "#{@talk.title} is starting soon!")
  end

  private

  def set_talk
    @talk = params[:talk]
  end
end
