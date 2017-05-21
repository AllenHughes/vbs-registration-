Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/signup', to: 'kids#register', as: 'register'
  post 'confirm', to: 'kids#confirm', as: 'confirm'
  root to: 'kids#register'
end
