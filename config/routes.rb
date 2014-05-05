<<<<<<< HEAD
RailsBootstrap::Application.routes.draw do
  root :to => 'visitors#new'

  resources :webtiers
  resources :apptiers
  resources :servicetiers
  resources :dbtiers
=======
Rails.application.routes.draw do
  root :to => "visitors#index"
>>>>>>> 7932994d0cd42068da90919e0d72fdefdf214f35
end
