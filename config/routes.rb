Rails.application.routes.draw do

  devise_for :teachers, controllers: {
  	sessions: 'teachers/sessions',
  	passwords: 'teachers/passwords',
  	registrations: 'teachers/registrations'
  }
  get 'teachers/index'

  devise_for :students, controllers: {
  	sessions: 'students/sessions',
  	passwords: 'students/passwords',
  	registrations: 'students/registrations'
  }
  resources :students

  resources :area_classes, only: [:index, :create, :destroy]
  resources :genres, only: [:index, :create, :destroy]
  resources :lessons, only: [:index, :new, :edit, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
