Rails.application.routes.draw do
  get "articles/show"
  namespace :pages do
    get "articles/skills"
  end
  get "pages/home"
  get "pages/about"
  get "pages/contact"
  devise_for :users, controllers: {sessions: 'users/sessions'}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  
  # Defines the root path route ("/")
  #get "/posts/new", to: "posts#new", as: :new_post
  #get "/posts/:id", to: "posts#show", as: :post
  #delete "/posts/:id", to: "posts#destroy", as: :destroy_post
  #patch "/posts/:id", to: "posts#update" 
  #get "/posts/:id/edit", to: "posts#edit"
  #post "/posts", to: "posts#create", as: :posts     
 
  #Rutas de CRUD Posts
  resources :posts

  #Rutas de articulos
  get 'work',to: "custom_posts#work"
  get 'skills',to: "custom_posts#skills"
  get 'education',to: "custom_posts#education"


  # Root 
  root "pages#home"
 
  #Rutas de paginas
  get 'home',to: "pages#home"
  get 'about',to: "pages#about"
  get 'contact',to: "pages#contact"
  get 'contact_form', to: "contact_form#new", as: :contact_form
  post 'contact_form', to: "contact_form#create", as: :contact_form_post


  

end
