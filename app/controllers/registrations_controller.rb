# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  before_action :set_user

  protected
   def after_sign_up_path_for(resource)
    generate_qrcode(resource)
    onboarding_path
   end

   def after_update_path_for(resource)
     if request.referrer.include?("onboarding_form")
      onboarding_preview_path 
     else 
      user_profile_path 
     end 
   end

   def update_resource(resource, params)
      resource.update_without_password(params)
   end

   private 
    def set_user 
      @user = current_user
    end

    def generate_qrcode(resource)
        host = Rails.application.routes.default_url_options[:host]
        qrcode = RQRCode::QRCode.new(user_url(resource, host:))
        png = qrcode.as_png(
          color: "000",
          shape_rendering: "crispEdges",
          module_size: 11,
          standalone: true,
          use_path: true
        )

        resource.qrcode.attach(
          io: StringIO.new(png.to_s),
          filename: "qrcode.png",
          content_type: "image/png",
          )
    end 
end
