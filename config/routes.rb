Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  get '/test_new', to: 'home#test_new'
  post '/test_create', to: 'home#test_create'
  get '/test_show/:id', to: 'home#test_show', as: 'test_show'
  get '/test_edit/:id', to: 'home#test_edit', as: 'test_edit'
  patch '/test_update/:id', to: 'home#test_update', as: 'test_update'
  delete '/test_destroy/:id', to: 'home#test_destroy', as: 'test_destroy'
  get '/take_test/:id', to: 'home#take_test', as: 'take_test'
  post '/test_submit', to: 'home#test_submit', as: 'test_submit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
