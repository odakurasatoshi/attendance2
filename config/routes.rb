Rails.application.routes.draw do

   devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
    passwords: 'teachers/passwords',
    registrations: 'teachers/registrations'
  }
  get 'teachers/index'

  namespace :teachers do
    resources :lessons, only: [:index, :new, :edit, :create]
    resources :area_classes, only: [:index, :create, :destroy]
    resources :genres, only: [:index, :create, :destroy]
    resources :courses, only: [:index, :create, :destroy]
  end

  devise_for :students, controllers: {
  	sessions: 'students/sessions',
  	passwords: 'students/passwords',
  	registrations: 'students/registrations'
  }

  namespace :students do
      resources :lessons, only: [:index, :show]
      resources :attendees, only: [:index, :show, :create]
  end
  resources :students

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
