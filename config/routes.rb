Rails.application.routes.draw do
  get 'site/room_data'
  resources :room_statuses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
