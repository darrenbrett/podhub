Rails.application.routes.draw do
  devise_for :podcasts
# root 'static_pages#index'

root 'welcome#index'

  
  resources :podcasts, only: [:index, :show] do
    resources :episodes
  end

end
