# frozen_string_literal: true

Rails.application.routes.draw do
  root 'post#index'
  resources :posts, only: %i[index show new create]
end
