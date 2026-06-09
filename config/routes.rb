Rails.application.routes.draw do
  resources :tweets
  resources :blogs
  resources :lectures
  resources :categories

  get 'schedule', to: 'blogs#schedule'

  get 'daily/:date',
    to: 'blogs#daily',
    as: 'daily_schedule'

  root 'lectures#index'
  get 'lectures/index' => 'lectures#index'
  get 'lectures/new' => 'lectures#new'
  post 'lectures/new' => 'lectures#create'

  get 'mypage', to: 'users#mypage'

  get 'today', to: 'todos#today'

end