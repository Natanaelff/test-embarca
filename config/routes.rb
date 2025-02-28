# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cities#index'
  resources :cities, only: [:index] do
    collection do
      get 'search'
    end
  end
end
