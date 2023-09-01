class UsersController < ApplicationController
    before_action :set_user, only: [:onboarding, :onboarding_form, :onboarding_preview, :profile]
    before_action :authenticate_user!, except: %i[show]

    def onboarding 
    end 

    def onboarding_form
        #If user agrees to fill out a profile, they probably want it to be public
        @user.update(private: false)
    end 
    
    def onboarding_preview
    end 

    def profile
        if request.referrer&.include?("onboarding_preview")
            flash.now[:notice] = "Welcome to the Rails World Conference App!"
        end 
    end 

    def show 
        #TO DO: After Installing Pundit, utilize it here!!!
        @user = User.find(params[:id])
        if @user.private?
            redirect_to root_path 
        end 
    end 

    private 
    def set_user 
        @user = current_user
    end
end
