#!/usr/bin/ruby -w
# iTUNES
# Copyright Mark Keane, All Rights Reserved, 2014

#This is the top level
require 'csv'
require_relative 'actor'
require_relative 'album'
require_relative 'song'
require_relative 'reader'
require_relative 'utilities'
require_relative 'error'
require_relative 'data'
require_relative 'predicate'



songs_file = ARGV[0]                  #for command line
owners_file = ARGV[1]                 #for command line

reader = Reader.new
data=DataStorage.new()
songs_file = 'songs.csv'             #in RubyMine
owners_file = 'owners.csv'           #in RubyMine

puts "\nProcessing Songs from file: #{songs_file}"
#$songs = reader.read_in_songs(songs_file)
data.songs=reader.read_in_songs(songs_file)

puts "Processing Ownership from file: #{owners_file}"
#$hash_owners = reader.read_in_ownership(owners_file)
data.hashes=reader.read_in_ownership(data, owners_file)

puts "Building all owners..."
#$actors = Actor.build_all()
data.actors = Actor.build_all(data)

puts "Updating songs with ownership details..."
#$songs.each{|song| song.owners = $hash_owners[song.id]}
data.songs.each{|song| song.owners = data.hashes[song.id]}

puts "Building All Albums..."
#$albums = Album.build_all()
data.albums = Album.build_all(data)


#puts "Displaying all tracks..."
#Album.build_an_album_called("Thriller")

# Given the name of a song and a person; let them buy the song
puts "\Vipin buys Thriller..."
song1 = Util.fetch(data, "Thriller")
vips =   Util.fetch(data, "Vipin")
vips.to_s
p song1.to_s
vips.buys_song(song1)
song1.to_s

# What songs does Vipin own
puts "\nHow many songs does Vipin own..."
p vips.what_songs_does_he_own(data).size

puts "\nPlay Thriller..."
#song1.play_song

# Print out all songs
puts "\nPrinting full details of all songs..."
#$songs.each{|song| p song}

# Print out all albums
puts "\nPrinting full details of all Albums..."
#p $albums
p data.albums

# Call it like this in the command line.
# markkean% ruby itunes.rb songs.csv owners.csv

