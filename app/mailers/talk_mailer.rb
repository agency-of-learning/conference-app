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

  #TODO: Remove if not going to use Noticed deliver_by: slack, this is for Talk::UpdateNotification
  def set_changes 
    @changes = params[:changes]
  end 
end
