Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: :new_task # form route; needs to be above show route
  get 'tasks/:id', to: 'tasks#show', as: :task
  # UPDATE EXISTING RESTAURANT
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # our edit form
  post 'tasks', to: 'tasks#create'
  patch 'tasks/:id', to: 'tasks#update' # submit action for our edit form

  # SHOW: SEE ONE RESTAURANT
  # DELETE ONE RESTAURANT
  delete 'tasks/:id', to: 'tasks#destroy'
end
