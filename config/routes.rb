Rails.application.routes.draw do

  root 'users#new'

  #New User
  get 'register'                    => 'users#new',             as: 'new_register'
  get 'users/new'                   => 'users#new'

  #Create User
  post 'register'                   => 'users#create',          as: 'register'
  post 'users'                      => 'users#create'

  #Show User
  get 'user/:id'                    => 'users#show',            as: 'user'

  #New Log in
  get 'login'                       => 'sessions#new',          as:'new_login'
  get 'sessions/new'                => 'sessions#new'

  #Login
  post 'login'                      => 'sessions#create',       as:'login'
  post 'sessions'                   => 'sessions#create'

  #Logout
  delete 'logout'                   => 'sessions#destroy',      as: 'logout'
  delete 'sessions'                 => 'sessions#destroy'


  #Create idea
  get     'bright_ideas'            => 'ideas#index',           as: 'ideas_home'
  post    'bright_idea'             => 'ideas#create',          as: 'new_idea'
  get     'bright_idea/:id'         => 'users#show',            as: 'show_idea'
  delete  'remove_idea/:id'         => 'ideas#delete',          as: 'delete_idea'

  #Likes
    post    'likes'                 => 'likes#create',          as: 'create_like'
    delete  'likes/:id'             => 'likes#destroy',         as: 'remove_like'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
