Rails.application.routes.draw do
  root 'students/lessons#index'
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
    passwords: 'teachers/passwords',
    registrations: 'teachers/registrations',
  }

  namespace :teachers do
    resources :lessons, only: [:index, :new, :show, :edit, :create, :update]
    resources :area_classes, only: [:index, :create, :edit, :update, :destroy]
    resources :genres, only: [:index, :create, :edit, :update, :destroy]
    resources :courses, only: [:index, :create, :edit, :update, :destroy]
    resources :time_classes, only: [:index, :create, :edit, :update, :destroy]
    resources :attendees, only: [:index, :edit, :update]
    resources :students, only: [:index, :show, :edit, :update]
    resources :no_lessons, only: [:index, :show, :create, :destroy]
    get 'students/search/' => 'students#search', as: 'students_search'
  end
  get 'teachers/index'

  devise_for :students, controllers: {
    sessions: 'students/sessions',
    passwords: 'students/passwords',
    registrations: 'students/registrations',
  }

  namespace :students do
    resources :lessons, only: [:index, :show]
    resources :attendees, only: [:index, :show, :create]
    resources :requests, only: [:show, :create]
  end
  resources :students, only: [:show, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
