Rails.application.routes.draw do
    
  devise_for :users
    root 'home#one'
  match ":controller(/:action(/:id))", :via => [:post, :get]
end
