Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'home'

  get '/pricing/wadsl', to: 'high_voltage/pages#show', id: 'pricing/wadsl'
  get '/pricing/whdsl', to: 'high_voltage/pages#show', id: 'pricing/whdsl'
  get '/pricing/adsl', to: 'high_voltage/pages#show', id: 'pricing/adsl'
  get '/pricing/fiber', to: 'high_voltage/pages#show', id: 'pricing/fiber'
  get '/pricing/voip', to: 'high_voltage/pages#show', id: 'pricing/voip'
end
