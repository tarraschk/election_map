class DashboardController < ApplicationController
  def home
    @region_list = Region.all.order(:name)
  end
end