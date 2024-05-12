Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/about' => 'homes#about', as: :about
  # 'homes/about'というURLを指定すると、homescontrollerのaboutアクションが実行される about_pathとして
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
