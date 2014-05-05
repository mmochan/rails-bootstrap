RailsBootstrap::Application.routes.draw do
  root :to => 'visitors#new'

  resources :webtiers
  resources :apptiers
  resources :servicetiers
  resources :dbtiers
end
