Rails.application.routes.draw do

  devise_for :users

  resources :users
  
  resources :resumes


  get 'main/all_resumes'

  get 'main/about'
  
  root 'main#about'

  
end
