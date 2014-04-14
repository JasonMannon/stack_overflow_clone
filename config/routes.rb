StackOverflowClone::Application.routes.draw do
  resources :answers

  resources :questions do
    resources :answers
  end

  resources :comments

  resources :users
  resources :sessions

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  root :to => 'questions#index'
end
