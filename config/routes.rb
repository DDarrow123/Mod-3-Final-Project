Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
     resources :cards
     resources :collections
     resources :comments
     resources :users
     get 'users/signin/:username', :to => 'users#sign_in'
   end
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
