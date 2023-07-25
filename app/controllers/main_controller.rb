class MainController < ApplicationController
  def index
    @talks = Talk.by_start_time
  end
end
