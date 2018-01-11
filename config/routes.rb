# frozen_string_literal: true

Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  devise_scope :user do
    root to: 'doorkeeper/applications#index'
  end
end
