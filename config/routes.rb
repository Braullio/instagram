# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users, only: %i[sessions registration passwords]
  resources :posts, only: %i[index show new create]
end
