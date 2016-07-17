Rails.application.routes.draw do

  root 'dashboard#home'

  namespace :statistics do
    get :test_stats
    get :evolution
    get :geometry_for_region
  end

end
