Rails.application.routes.draw do
  devise_for :podcasts
# root 'static_pages#index'

root 'welcome#index'
 
  match '/podcasts', to: 'static_pages#podcasts', via: 'get'
  match '/podcast_show', to: 'static_pages#podcast_show', via: 'get'
  match '/episode', to: 'static_pages#episode', via: 'get'
  match '/dashboard', to: 'static_pages#dashboard', via: 'get'
  match '/sign_in', to: 'static_pages#sign_in', via: 'get'
  match '/sign_up', to: 'static_pages#sign_up', via: 'get'
  match '/', to: 'static_pages#index', via: 'get'

end
