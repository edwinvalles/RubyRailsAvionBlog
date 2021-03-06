Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/articles' => 'articles#index'
  # http path to index article ^
  get '/articles/new' => 'articles#new', as: 'new_article'
  # http path for new articles ^ the comma part is coder assigned path. otherwise rails will automatically assign
  post '/articles' => 'articles#create', as: 'create_article'
  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  put '/articles/:id' => 'articles#update', as: 'update_article'
  get '/articles/:id/show' => 'articles#show', as: 'show_article'
  delete '/articles/:id/delete' => 'articles#delete', as: 'delete_article'
end
