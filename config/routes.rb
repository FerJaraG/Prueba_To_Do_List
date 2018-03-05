Rails.application.routes.draw do
  resources :tasks do 
  	member do 
  		get :donetasks, to: 'donetasks#create'
  	end
  end

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  root 'tasks#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


 # resources :tasks, only: [:index] do 
 #  	resources :donetasks, only: :create
 #  end


#  resources :photos do
#   member do
#     get :preview
#   end
# end