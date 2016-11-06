Rails.application.routes.draw do
  use_doorkeeper
  namespace :api do
    get 'petitions' => 'petitions#index'
    get 'petitions/:id' => 'petitions#show'
    post 'petitions' => 'petitions#create'
    patch 'petitions/:id' => 'petitions#update'
    delete 'petitions/:id' => 'petitions#delete'
    post 'registrations' => 'registrations#create'

    post 'users' => 'users#create'
    patch 'users/:id'=>'users#update'
    get 'users/:id' => 'users#show'
    get 'me' => 'users#me'
    delete 'me' => 'users#delete'
  end
end
