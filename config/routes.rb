Rails.application.routes.draw do
    
  devise_for :users
    root 'home#two'
  match ":controller(/:action(/:id))", :via => [:post, :get]
end
