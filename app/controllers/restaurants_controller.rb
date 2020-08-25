class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def index
    @restaurants = policy_scope(Restaurant)
  end



end
