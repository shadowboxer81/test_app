Rails.application.routes.draw do
  resources :users
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#home'
  get 'about', to: 'welcome#about'
  get 'sbtop', to: 'welcome#sbtop'
  get 'graphics', to: 'welcome#graphics'
  get 'last24', to: 'welcome#last24'
  get 'cnc', to: 'welcome#cnc'
  get 'cnc_accepted', to: 'welcome#cnc_accepted'
  get 'test_flash', to: 'welcome#test_flash'


  get 'login',to:'sessions#new'
  post 'login',to:'sessions#create'
  delete 'logout',to:'sessions#destroy'
end
