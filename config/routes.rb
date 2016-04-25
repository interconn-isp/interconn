Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'home'

  get '/pricing/wadsl', to: 'high_voltage/pages#show', id: 'pricing/wadsl'
end
