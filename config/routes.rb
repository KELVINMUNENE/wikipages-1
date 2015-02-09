Rails.application.routes.draw do
  resources :contacts
  # match('contacts/new', {:via => :get, :to => 'contacts#new'})
  # match('contacts/', {:via => :get, :to => 'contacts#index'})
  # match('contacts/', {:via => :post, :to => 'contacts#create'})
  # match('contacts/', {:via => :delete, :to => 'contacts#destroy'})
  # match('contacts/:id/edit', {:via => :get, :to => 'contacts#edit'})
  # match('contacts/:id', {:via => :get, :to => 'contacts#show'})
  # match('contacts/:id', {:via => [:patch, :put],  :to => 'contacts#update'})
end
