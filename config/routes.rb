Rails.application.routes.draw do
  get "/"
  get 'posts/index'
  get 'posts/dashboard'
  post 'posts/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
