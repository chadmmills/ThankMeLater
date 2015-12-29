Rails.application.routes.draw do

  resources :contacts
  resources :mailing_lists

  root 'contacts#index'

end
