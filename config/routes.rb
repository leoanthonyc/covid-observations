Rails.application.routes.draw do
  get 'top/confirmed', to: 'observations#confirmed'

  root 'observations#confirmed'
end
