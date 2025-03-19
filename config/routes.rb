Rails.application.routes.draw do
  root 'tasks#index'

  resources :tasks do 
    member do
      post :completed, to: "tasks#task_complete"
    end
  end
end
