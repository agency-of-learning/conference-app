# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  protected
   def after_sign_up_path_for(resource)
     onboarding_path
   end
end
