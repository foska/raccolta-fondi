Sito::Application.routes.draw do
  

  resources :campaigns do
    resources :aims
  end

  resources :campaigns do
    resources :bills
  end
  resources :aims
  resources :bills
  devise_for :users,:controllers => { :registrations =>'registration'}
  root :to =>'home#index'
  match '/users', :to => 'users#index',    :as => 'users',         :via => :get
  match '/users/:id', :to => 'users#show',    :as => :user,         :via => :get
  get 'index' => 'home#index'


  match '/mycampaigns' => 'campaigns#mycampaigns', :as => 'mycampaigns', :via => :get
  match '/mybills' => 'bills#mybills', :as => 'mybills', :via => :get

  

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
