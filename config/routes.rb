Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # config/routes.rb
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

  resources :reviews, only: [ :edit, :show, :update, :destroy ]

end
