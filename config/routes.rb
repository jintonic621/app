Rails.application.routes.draw do
  get 'login' => "users#login_1"
  get "logout" => "users#logout"
  post "login" => "users#login_2"
  post "signup" => "users#signup"
  get "users/:id/show" => "users#show"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"




  get "datebass_users" => "users#datebass"

  get '/' => "home#top"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
