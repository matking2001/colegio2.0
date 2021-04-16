Rails.application.routes.draw do
  devise_for :users

  resources :posts, only:[:destroy, :index, :edit, :new, :create, :update]
  resources :users, only:[:destroy, :index, :show, :edit, :new, :create, :update]

  resources :users do
    resources :reports
    resources :subjects
  end

  resources :classrooms do
    resources :users, module: :classrooms
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "posts#index"
end
