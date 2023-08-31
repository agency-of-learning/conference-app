class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@railsworld.agencyoflearning.com", to: -> { @recipient.email }

  before_action :set_recipient

  layout "mailer"

  private

  def set_recipient
    @recipient = params[:recipient]
  end
end
