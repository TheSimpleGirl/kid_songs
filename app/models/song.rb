class Song < ActiveRecord::Base
  attr_accessible :artist, :note, :title, :url
end
