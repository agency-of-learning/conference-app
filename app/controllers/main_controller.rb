class MainController < ApplicationController
    def index 
        @talks = Talk.all
    end 
end
