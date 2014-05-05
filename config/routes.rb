
RailsBootstrap::Application.routes.draw do
  root :to => 'visitors#index'

  resources :webtiers
  resources :apptiers
  resources :servicetiers
  resources :dbtiers
end
