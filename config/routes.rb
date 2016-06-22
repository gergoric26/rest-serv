Rails.application.routes.draw do

  devise_for :admins
  get 'admin/admin_page'

  devise_for :users

  resources :users, only: [:index] do
    resources :resumes
  end
  
  resources :resumes


  get 'main/all_resumes'

  get 'main/about'
  
  root 'main#about'

  
end
