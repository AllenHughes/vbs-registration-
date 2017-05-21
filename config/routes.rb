Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :kids do
    get 'register', on: :new
    collection do
      post 'confirm'
    end
  end
  
  root to: 'kids#register'
end
