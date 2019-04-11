# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :requests do
    namespace :distance do
      get 'hq', to: 'hq#index'
    end
  end
end
