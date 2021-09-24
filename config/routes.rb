Rails.application.routes.draw do
  get 'observations/confirmed'
  get 'top/confirmed', to: 'observations#confirmed'
end
