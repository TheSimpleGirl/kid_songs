class SongsController < ApplicationController

def index
@songs = Song.all
# s = Song.new
# s.url = params["song"]["url"]

end

#---------------------------------------

def show
  song_id = params["id"].to_i
  @a = Song.find_by_id(song_id)
  
 
end

#----------------------------------------

def new

@song = Song.new


end

#----------------------------------------

def create
s = Song.new
s.url = params["song"]["url"]
s.note = params["song"]["note"]
s.artist = params["song"]["artist"]
s.title = params["song"]["title"]
s.save  
redirect_to songs_url
end


#----------------------------------------

def edit

  @song = Song.find_by_id(params[:id])

end

#-------------------------------------------

def update
  songs = Song.find_by_id(params[:id])
  songs.url = params["song"]["url"]
  songs.title = params["song"][:title]
  songs.artist = params["song"]["artist"]
  songs.note = params["song"]["note"]
  songs.save

redirect_to "/songs/#{params[:id]}"
  
end



#------------------------------------------
def delete
  songs = Song.find_by_id(params[:id])
  songs.destroy
  redirect_to "/songs"
  
  
end


#-----------------------------------------

end
