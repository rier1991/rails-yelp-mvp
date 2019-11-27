Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show]
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
                          # restaurant_reviews_path(needs @restaurant)
                          # new_restaurant_review_path(needs @restaurant)
  end

  resources :reviews, only: [:show]
                          # review_path(needs @review)
end
