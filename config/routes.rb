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
  get 'sections/index'
  root 'sections#index'
end
