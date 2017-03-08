Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/new'

  get 'posts/show'

  get 'posts/create'

  get 'posts/edit'

  get 'posts/delete'

  get 'posts/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sections do
    resources :posts
  end

  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end

  get 'sections/index'
  root 'sections#index'
end
