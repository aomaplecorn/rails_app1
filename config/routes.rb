Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#------------------------new
  # get 'lists/new'
  get 'top' => 'homes#top'
  resources :lists
# #------------------------create
#   post 'lists' => 'lists#create'
# #------------------------index
#   get 'lists' => 'lists#index'
# #------------------------show
#   get 'lists/:id' => 'lists#show', as: 'list'
# #------------------------edit
#   get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
#   patch 'lists/:id' => 'lists#update', as: 'update_list'
# #------------------------destroy
#   delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
# #------------------------
#   get '/top' => 'homes#top'
end