class ContributorsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @contributors = Contributor.all
  end
end
