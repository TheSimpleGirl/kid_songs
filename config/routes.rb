KidSongs::Application.routes.draw do
  
  get '/songs' => "songs#index" 
  
  get '/songs/new' => "songs#new"
  post '/songs' => "songs#create"
   
  get '/songs/:id/edit' => "songs#edit"
  put '/songs/:id/edit' => "songs#update", :as => "song"
   
  delete '/songs/:id' => "songs#delete", :as => "delete"
  
  get '/songs/:id' => "songs#show" 
  
end
