Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'home#welcome'
	# get '/authors', to: 'authors#index', as: :authors
	# get '/authors/:id', to: 'authors#show', as: :author
	# get '/author/new', to: 'authors#new', as: :new_author

	# get '/posts', to: 'posts#post_index', as: posts
	# get '/posts/:id', to: 'posts#post_show', as: post	

	resources :posts
	resources :authors
	resources :commentators
	resources :comments
end
