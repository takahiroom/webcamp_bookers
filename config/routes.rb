Rails.application.routes.draw do
  get 'todolists/new'
  root to: 'homes#top'
  post 'todolists' => 'todolists#create'
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
  resources :books, only: [:index, :show, :create, :update, :destroy, :edit]

end
