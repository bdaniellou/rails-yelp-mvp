Rails.application.routes.draw do

  resources :restaurants, only: [:create, :index, :show, :new] do
    resources :reviews, only: [:index, :show, :new, :create]
  end

  # namespace :admin do
  #   resources :restaurants do
  #     resources :reviews
  #   end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
