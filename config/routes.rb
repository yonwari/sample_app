Rails.application.routes.draw do
  get '/top' => 'root#top'
  get 'posts/new' => 'posts#new'
  post '/posts' => 'posts#create'
  get '/posts' => 'posts#index'

  get '/posts/:id' => 'posts#show', as: 'post'

  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
  patch '/posts/:id' => 'posts#update', as: 'update_post'

end
