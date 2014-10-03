Rails.application.routes.draw do
  resources :users do
    resources :events, only: [:index, :show]
  end
  root to: 'events#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end

#  user_events GET    /users/:user_id/events(.:format)     events#index
#   user_event GET    /users/:user_id/events/:id(.:format) events#show
#        users GET    /users(.:format)                     users#index
#              POST   /users(.:format)                     users#create
#     new_user GET    /users/new(.:format)                 users#new
#    edit_user GET    /users/:id/edit(.:format)            users#edit
#         user GET    /users/:id(.:format)                 users#show
#              PATCH  /users/:id(.:format)                 users#update
#              PUT    /users/:id(.:format)                 users#update
#              DELETE /users/:id(.:format)                 users#destroy
#         root GET    /                                    events#index
#              GET    /auth/:provider/callback(.:format)   sessions#create
#       signin GET    /signin(.:format)                    sessions#new
#      signout GET    /signout(.:format)                   sessions#destroy
# auth_failure GET    /auth/failure(.:format)              sessions#failure
#         page GET    /pages/*id                           high_voltage/pages#show
