Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get"/", to: 'users#new'
get "/users", to: 'users#index'
get "/signup", to: 'users#new'
post "/users", to: 'users#create'

get "/login", to: 'sessions#new'
post "/login", to: 'sessions#create'
delete "/logout", to: 'sessions#destroy'

get "/submisions", to: 'submissions#index'
get "/submisions/new", to: 'submissions#new'
get "/submisions/:id", to: 'submissions#show'
post "/submisions", to: 'submissions#create'
get "/submisions/:id/edit", to: 'submissions#edit'
patch "/submisions/:id",to: 'submissions#update'
delete "/submisions/:id", to: 'submissions#destroy'



get "/feedbacks/new", to: 'feedbacks#new'
get "/feedbacks/:id", to: 'feedbacks#show'
post "/feedbacks", to: 'feedbacks#create'
get "/feedbacks/:id/edit", to: 'feedbacks#edit'
patch "/feedbacks/:id",to: 'feedbacks#update'
delete "/feedbacks/:id", to: 'feedbacks#destroy'

get "/comments/new", to: 'comments#new'
get "/comments/:id", to: 'comments#show'
post "/comments", to: 'comments#create'
get "/comments/:id/edit", to: 'comments#edit'
patch "/comments/:id",to: 'comments#update'
delete "/comments/:id", to: 'comments#destroy'

end
