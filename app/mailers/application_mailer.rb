class ApplicationMailer < ActionMailer::Base
  if Rails.env.production?
    default from: "no-reply@railsworld.agencyoflearning.com", to: -> { @recipient.email }
  elsif Rails.env.staging?
    default from: "no-reply@mail.montibuslabs.com", to: -> { @recipient.email }
  end


  before_action :set_recipient

  layout "mailer"

  private

  def set_recipient
    @recipient = params[:recipient]
  end
end
