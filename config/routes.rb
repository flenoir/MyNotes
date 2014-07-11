MyNotes::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # http://localhost:3000/?message=Hello
# params[:message] => "Hello"
  root "notes#index" # appele la methode hello du controlleur notes
  # get "/notes/search" => "notes#search", :as => "search"

  resources :notes do
    get "search", on: :collection #:collection si on cherche sur notes, :member si on cherche sur notes/:id
  end

# http://localhost:3000/notes/1
# params[:id] => 1
   
   # get "/notes" => "notes#index", :as =>"notes" #c'est un helper d'url pour pouvoir utiliser notes_path dans la vue
   # get "/notes/new" => "notes#new", :as => "new"
   # post "/notes" => "notes#create"
   # get "/notes/:id/edit" => "notes#edit", :as =>"edit"
   # patch "notes/:id" => "notes#update"
   # get "/notes/:id" => "notes#show", :as =>"note" 
   # delete "/notes/:id" => "notes#destroy"


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
