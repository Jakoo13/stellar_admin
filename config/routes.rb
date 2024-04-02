Rails.application.routes.draw do
  resources :users, only: %i[index show]

  devise_for :users,
  defaults: { format: :json },
  path: '',
  path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # get "up" => "rails/health#show", as: :rails_health_check
end
