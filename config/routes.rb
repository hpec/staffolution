Staffolution::Application.routes.draw do
  resources :applications
  resources :jobs

  get "landings/index"
  root 'landings#index'
  get "get-started" => "landings#get_started", as: :get_started
  post "applications/:id" => "applications#create", as: :make_app
  patch "/accept" => "application#accept", as: :accept_app
  patch "/decline" => "application#decline", as: :decline_app

  scope :user do
    get "dashboard" => "user#dashboard", as: :dashboard
    # get "employer-profile/new" => "employers#new", as: :new_user_employer
    # get "employee-profile/new" => "employees#new", as: :new_user_employee
  end

  resources :employers do
  #->Prelang (voting/acts_as_votable)
    member do
      get "vote"
    end
  end

  resources :reps do
  #->Prelang (voting/acts_as_votable)
    member do
      get "vote"
    end
  end

  resources :reviews

  resources :employees do
  #->Prelang (voting/acts_as_votable)
    member do
      get "vote"
    end
  end

  resources :education_classes do
  #->Prelang (voting/acts_as_votable)
    member do
      get "vote"
    end
  end

  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords", omniauth_callbacks: "users/omniauth_callbacks"}, skip: [:sessions, :registrations]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #->Prelang (user_login:devise/stylized_paths)
  devise_scope :user do
    get    "login"   => "devise/sessions#new",         as: :new_user_session
    post   "login"   => "devise/sessions#create",      as: :user_session
    delete "signout" => "devise/sessions#destroy",     as: :destroy_user_session

    get    "signup"  => "users/registrations#new",     as: :new_user_registration
    post   "signup"  => "users/registrations#create",  as: :user_registration
    put    "signup"  => "users/registrations#update",  as: :update_user_registration
    get    "account" => "devise/registrations#edit",   as: :edit_user_registration
  end

end
