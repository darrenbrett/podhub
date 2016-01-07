Rails.application.routes.draw do
  devise_for :podcasts
# root 'static_pages#index'


  
  resources :podcasts, only: [:index, :show] do
    resources :episodes
  end
  
  authenticated :podcast do
    root 'podcasts#dashboard', as: "authenticated_root"
  end
  
  root 'welcome#index'

end
