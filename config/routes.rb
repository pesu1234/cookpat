Rails.application.routes.draw do
  root 'recipes#index'
  #ログイン
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  #ログアウト
  get '/logout' => 'sessions#destroy' #動作確認用
  delete '/logout' => 'sessions#destroy'
  #ユーザー
  resources :users, only: [:edit, :update, :new, :create]
  #ユーザー情報の変更
  get '/users/:id/mail/edit' => 'users#mail_edit'
  patch '/users/:id/mail/edit' => 'users#mail_update'
  get '/users/:id/change_password' => 'users#password_edit'
  patch '/users/:id/change_password' => 'users#password_update'
  get '/users/:id/postnum/edit' => 'users#postnum_edit'
  patch '/users/:id/postnum/edit' => 'users#postnum_update'
  #レシピ
  resources :recipes
  get '/recipes/search' => 'recipes#search'
  post '/recipes/search' => 'recipes#search'
end
