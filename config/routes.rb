Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sections do
    resources :posts
  end
  get 'sections/index'
  root 'sections#index'
end
