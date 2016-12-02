Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get 'home/welcome'
  root 'home#welcome'

  use_doorkeeper
  namespace :api do
    get 'petitions' => 'petitions#index'
    get 'petitions/:id.pdf' => 'petitions#show_petition'
    get 'petitions/:id' => 'petitions#show'
    post 'petitions' => 'petitions#create'
    patch 'petitions/:id' => 'petitions#update'
    delete 'petitions/:id' => 'petitions#delete'
    post 'registrations' => 'registrations#create'
    post 'signout' => 'registrations#delete'

    get 'petitions/:id'=> 'petitions#show'

    post 'users' => 'users#create'
    patch 'users/:id'=>'users#update'
    get 'users/:id' => 'users#show'
    get 'me' => 'users#me'
    delete 'me' => 'users#delete'

  end

  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete', as: :end_session
  get 'sign_out' => 'sessions#delete', as: :sign_out
    
end


