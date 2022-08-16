Rails.application.routes.draw do
  get '/', to: 'blogs#index'
  resources :blogs, only: [:index]
  resources :articles
  resource  :users do
    get :sign_up
    get :sign_in
  end
  resource :sessions, only: %i[create destroy]
end
