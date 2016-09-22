Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'home'

  %w(wadsl adsl fiber voip).each do |section|
    get "/pricing/#{section}", to: 'high_voltage/pages#show', id: "pricing/#{section}"
  end

  get '/support', to: 'high_voltage/pages#show', id: 'support'

  get '/contact', to: 'tickets#new', as: 'new_ticket'
  post '/contact', to: 'tickets#create', as: 'tickets'
end
