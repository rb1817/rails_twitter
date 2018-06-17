Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
   get '/' => 'tweet#index'
   
   get '/new' => 'tweet#new'
   post '/create' => 'tweet#create'
   
   get '/:id/destroy' => 'tweet#destroy'
   
   get '/:id/edit' => 'tweet#edit'
   post '/:id/update' => 'tweet#update'
   
end
