#!/usr/bin/ruby -w
# ALBUM
# Copyright Mark Keane, All Rights Reserved, 2014

# Class that encodes details of an album.

require_relative 'predicate'
class Album
	  include Pred
	attr_accessor :name, :tracks, :length, :artist,:owners, :id
	def initialize(name, tracks, length, artist, owners)
		@name = name
		@tracks = tracks
		@length = length
		@artist = artist
    @owners = owners
		@id = name.object_id
	end

  # Method that prints out the contents of an album object nicely.
	def to_s
		puts "The album #{@name} by #{@artist}. \n"
	end	

  # Method that checks if an object given to it is an album.
	def isa?
		instance_of?(Album)
	end

  # Method makes an album object; just uses Album.new; really
  # just being a bit explicit and obvious.

	def self.make_album(name,tracks, length, artist, owners)
		Album.new(name, tracks, length, artist, owners)
	end

  # Class Method that builds albums from song object's contents.
  # It returns an array of album objects.  It calls another class method that
  # builds a single album, given the name of that album.

  def self.build_all(data, albums = [])
    defaultalbum=""
	
    data.songs.select {|song| 
		if(defaultalbum!=song.album)
			defaultalbum=song.album
			albums.push(Album.build_an_album_called(data, defaultalbum))
		end
	}
	albums
	 
  end

  # Class method that takes an album name, it finds all the sounds that are in that album
  # builds up arrays of the song-names (tracks), runtimes, artist names.  These all get used
  # to populate the various attributes of the album object.

  def self.build_an_album_called(data, album_name)
    tracklist=[]
	length=0.0
	artistname=""
	owners=""
	data.songs.select {|song| 
	
		if (album_name==song.album)
			tracklist.push(song.name)
			length=length+song.time.to_f
			artistname=song.artist
			owners=song.owners
		end
	}
	Album.make_album(album_name, tracklist, length, artistname, owners)
	
     #p "oops...this is missing   ;-)"
  end

end
