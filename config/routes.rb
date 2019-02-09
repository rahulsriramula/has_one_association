Rails.application.routes.draw do

	root 'lakes#index'

	resources :lakes do
		resources :villages
    end

end
