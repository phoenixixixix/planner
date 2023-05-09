Rails.application.routes.draw do
  resources :tasks, only: %i[index create show update], param: :slug

  root "home#index"
  get '*path', to: 'home#index', via: :all
end
