Rails.application.routes.draw do
  root "mails#index"
  resources :mails
end
