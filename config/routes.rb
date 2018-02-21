# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :tasks

  resources :tasks do
    collection do
      post :button_begin
      post :button_finish
    end
  end

  resources :projects
  root to: 'tasks#index'

  resources :main do
    collection do
      post :button_get_result
      post :button_count_results
    end
  end
end
