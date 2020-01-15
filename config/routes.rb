Rails.application.routes.draw do
  get 'welcome/index'
  #get 'about', to: 'welcome/about'
  
  resources :articles do
      resources :comments
    end
  
  root 'welcome#index'
  #root 'welcome#About'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
