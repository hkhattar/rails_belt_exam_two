Rails.application.routes.draw do
 

  post 'joins' => 'joins#create'

  delete 'joins' => 'joins#delete'

  get 'groups' => 'groups#index'

  post 'groups' => 'groups#create'

  get 'groups/:id' => 'groups#show'

  delete 'groups/:id' => 'groups#delete'

  post 'sessions' => 'sessions#create'

  delete 'sessions/:id' => 'sessions#delete'

  get 'users/new'

  post 'users' => 'users#create'

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
