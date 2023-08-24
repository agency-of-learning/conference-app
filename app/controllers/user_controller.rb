class UsersController < ApplicationController
    before_action :set_user
    def onboarding 
    end 

    def onboarding_form
    end 
    
    def onboarding_preview
    end 

    private 
    def set_user 
        @user = current_user
    end
end
