# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  protected
   def after_sign_up_path_for(resource)
     onboarding_path
   end

   def after_update_path_for(resource)
     if request.referrer.include?("onboarding_form")
      onboarding_preview_path 
     else 
      users_profile_path 
     end 
   end

   def update_resource(resource, params)
      resource.update_without_password(params)
   end
end
