Rails.application.routes.draw do

  resources :resumes

  get 'main/all_resumes'

  get 'main/about'
  
  root 'main#about'

  
end
