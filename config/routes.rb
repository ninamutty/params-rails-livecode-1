Rails.application.routes.draw do

  # get 'comments/index'    ### Don't need these two ###
  #
  # get 'comments/show'

  get 'posts/show/:id/comments/:comment_id/edit' => 'comments#edit', as: 'edit_comment'

  get 'comments/update'

  get 'posts/show/:id/comments/new' => 'comments#new', as: 'new_comment'

  post 'posts/show/:id/comments/create' => 'comments#create', as: 'create_comment'

  get 'comments/destroy'




  root to: 'posts#index'

  get 'posts/index', as: 'index'

  post 'posts/create' => 'posts#create'

  get 'posts/show'

  get 'posts/show/:id' => 'posts#show', as: 'show'   ### This is where we'll want to show the individual blog posts

  get 'posts/new'

  post 'posts'  => 'posts#create', as: 'create'

  get 'posts/:id/edit' => 'posts#edit', as: 'edit'

  put 'posts/:id/update' => 'posts#update', as: 'posts_update'

  delete 'posts/:id/destroy' => 'posts#destroy', as: 'delete'



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
