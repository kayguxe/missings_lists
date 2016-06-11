Rails.application.routes.draw do
  resources :missing_lists do
    resources :missing_items do
        	member do
    		     patch :complete
    	end
  end
end
    
  root "missing_lists#index"
end
