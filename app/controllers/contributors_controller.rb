class ContributorsController < ApplicationController
  def index
    @contributors = Contributor.all
  end
end
