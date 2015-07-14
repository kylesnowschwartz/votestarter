Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :candidates do
    resources :pledges, except: [:index, :show]
    resources :contributions, except: [:index, :show, :destroy, :edit, :update]
  end
end
