class ApplicationMailer < ActionMailer::Base
  default from: "world@rubyonrails.org", to: -> { @recipient.email }

  before_action :set_recipient

  layout "mailer"

  private

  def set_recipient
    @recipient = params[:recipient]
  end
end
