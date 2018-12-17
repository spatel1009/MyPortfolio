Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end
  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'java', to: 'portfolios#java'
  
  get 'about', to: 'pages#about'
  get 'resume', to: 'resumes#resume'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
 
  root to: 'pages#home'
end
