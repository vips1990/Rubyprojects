#!/usr/bin/ruby -w
# READER
# Copyright Mark Keane, All Rights Reserved, 2014

#  Class that reads in things from different files.
require_relative 'predicate'
require_relative 'data'
class Reader
	# method to read in songs from the songs.csv file.
  # returns an array of song objects.

	def read_in_songs(csv_file_name)
	  songs = []
	  CSV.foreach(csv_file_name, :headers => true) do |row|
		songname, artist, album, time, id = row[0],row[1], row[2], row[3], row[4]
	 	unless (songname =~ /#/)
		    errwithsongandownerid(id)
	 	 	 songs << Song.new(songname,album,artist,time.to_f,nil,id)
	 	end
	  end
	  songs
	end
	   
	# method to read in owners and the ids of the songs they own from the owners.csv file.
  # returns a hash table where the keys are song-ids and the values are the owners this song (a string)

	def read_in_ownership(data, csv_file_name, temp_hash = Hash.new)
	  CSV.foreach(csv_file_name, :headers => true) do |row|
		  song_id, owner_data = row[0], row[1]
	 	  unless (song_id =~ /#/)
		         errwithsongandownerid(song_id)
				 checkmappingofowneridwithsongid(data, song_id)
	 	 	     temp_hash[song_id] = owner_data
	 	  end
    end
    temp_hash
	end
	
	def errwithsongandownerid(checkid)
	  if (checkid.instance_of?(Float))
	    puts "Invalid Enry- cannot be in decimal"
		exit(false)
	  elsif (checkid.to_f==0.0)
	    puts ("Invalid entry in the csv file")
		exit(false)
	  end
	end
	
   	def checkmappingofowneridwithsongid(data, checkid)
	  flag=0
	  
	  data.songs.select {|song| 
	  if checkid == song.id
	    flag=1
	  break
	  end
	  }
	  
	  if (flag==0)
	    puts ("Owner has song id which is not mentioned in songs.csv..so owner has some songs which are unavailable in library")
	    exit(false)
	  end
	end
	
end
