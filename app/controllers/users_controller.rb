class UsersController < ApplicationController
    before_action :set_user
    def onboarding 
    end 

    def onboarding_form
        debugger
        @user
    end 

    private 
    def set_user 
        @user = current_user
    end
end
