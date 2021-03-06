Rails.application.routes.draw do
  # resources :tweets
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tweets#index'
  	# root 'epicenter#feed'

  get 'feed' => 'epicenter#feed'
  # get 
 get 'all_users' => 'epicenter#all_users'
  get 'show_user' => 'epicenter#show_user'

  get 'now_following' => 'epicenter#now_following'

  get 'unfollow' => 'epicenter#unfollow'
  
  get 'tag_tweets' => 'epicenter#tag_tweets'
  # get 'epicenter/unfollow'
  get 'following' => 'epicenter#following'

  get 'followers' => 'epicenter#followers'

  resources :tweets
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'tweets#index'
end
