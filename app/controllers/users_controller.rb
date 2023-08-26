class UsersController < ApplicationController
    before_action :set_user, only: [:onboarding, :onboarding_form, :onboarding_preview, :profile]
    
    def onboarding 
    end 

    def onboarding_form
    end 
    
    def onboarding_preview
    end 

    def profile 
    end 

    def show 
        @user = User.find(params[:id])
    end 

    private 
    def set_user 
        @user = current_user
    end
end
