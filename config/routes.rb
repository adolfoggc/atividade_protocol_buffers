Rails.application.routes.draw do
  root 'site#room_data'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/insert/:info', to: 'site#get_info', as: "get_info"
  get '/lamp', to: 'site#gera_info', as: 'gera_info'

  get '/g_lamp', to: 'site#get_lamp', as: 'get_lamp'
  post '/s_lamp', to: 'site#set_lamp', as: 'set_lamp'
  get '/g_termo', to: 'site#get_termo', as: 'get_termo'
  post '/s_termo', to: 'site#set_termo', as: 'set_termo'
  get '/g_tv', to: 'site#get_tv', as: 'get_tv'
  post '/s_tv', to: 'site#set_tv', as: 'set_tv'
end
