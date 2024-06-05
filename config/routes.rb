Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  get 'homes/about' => 'homes#about', as: :about
  # 'homes/about'というURLを指定すると、homescontrollerのaboutアクションが実行される about_pathとして
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
