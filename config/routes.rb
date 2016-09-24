Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  get 'welcome/index'

  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :pins do
    member do
      put "like", to: "pins#upvote"
    end
  end

  get '/toread', to: 'toread_lists#index'
 resources :toread_lists do
   resources :toread_items do
     member do
       patch :complete
     end
   end
 end

end
