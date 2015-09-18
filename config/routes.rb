Rails.application.routes.draw do
    
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
    root 'home#two'
    post 'home/reply/(:id)' => 'home#test1', as: 'reply_view'
    post 'home/write_reply', as: 'reply_reply'

    match ":controller(/:action(/:id))", :via => [:post, :get]
    
end

