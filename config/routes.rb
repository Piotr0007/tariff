Rails.application.routes.draw do
 root 'welcome#index'

resources:users


resources:drivers

resources:courses

resources:welcome





 #get 'drivers', to: 'drivers#new'
 #get 'articles/new', to: 'articles#new', as:'new_article'
 #post 'articles', to: 'articles#create'
 #get 'articles/:id', to: 'articles#show', as: 'article'
 #get 'articles/:id/edit', to: 'articles#edit', as: 'edit_article'
 #patch 'articles/:id', to: 'articles#update'
 #delete 'articles/:id', to: 'articles#destroy'


   
  get 'test/index'
  get 'test/navigation'
  get 'user/new'
  get 'user/show'
  get 'drivers/new'
  get 'driver/new'
    post "courses/new"
    post "welcome/about_tariff"
    post "welcome/news"
    post "welcome/Your_journeys"
    post "welcome/settings"
   

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
