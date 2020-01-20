Rails.application.routes.draw do

  get 'entries/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :entries

  root 'entries#index'
  get 'entries/new' => 'entries#new'
end
