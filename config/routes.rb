# frozen_string_literal: true

Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  devise_scope :user do
    root to: 'doorkeeper/applications#index'
  end

  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create show]
      resources :countries, only: %i[index]
    end
  end
end
