Rails.application.routes.draw do
  match('contacts', {:via => :get, :to => 'contacts#index'})
  match('contact/:id', {:via => :get, :to => 'contacts#show'})
end
