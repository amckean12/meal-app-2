Rails.application.routes.draw do
  #Initial app landing page ==> meal-app.com/
  root 'welcome#welcome'

  #Login Routes
  post '/signin', to: 'sessions#create'
  #Logout Routes
  delete '/logout', to: 'sessions#destroy'

  resources :users
end
