Rails.application.routes.draw do
  root 'students/lessons#index'
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
    passwords: 'teachers/passwords',
    registrations: 'teachers/registrations',
  }

  devise_scope :teacher do
    post 'teachers/guest_sign_in', to: 'teachers/sessions#new_guest'
  end

  namespace :teachers do
    resources :lessons, only: [:index, :new, :show, :edit, :create, :update]
    resources :area_classes, only: [:index, :create, :edit, :update, :destroy]
    resources :genres, only: [:index, :create, :edit, :update, :destroy]
    resources :courses, only: [:index, :create, :edit, :update, :destroy]
    resources :time_classes, only: [:index, :create, :edit, :update, :destroy]
    resources :attendees, only: [:create, :destroy, :index, :edit, :update]
    resources :students, only: [:index, :show, :edit, :update]
    resources :no_lessons, only: [:index, :create, :destroy]
    # get 'search/' => 'search#search', as: 'search'
  end
  get 'teachers/index'

  devise_for :students, controllers: {
    sessions: 'students/sessions',
    passwords: 'students/passwords',
    registrations: 'students/registrations',
  }

  devise_scope :student do
    post 'students/guest_sign_in', to: 'students/sessions#new_guest'
  end

  namespace :students do
    resources :lessons, only: [:index, :show]
    resources :attendees, only: [:index, :show, :create]
    resources :requests, only: [:show, :create]
  end
  resources :students, only: [:show, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
