# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode
=begin

- create a song class
	- create a method to initialize two arguments
		- initialize the title of the song
		- initialize the artist of the song
	- create a play method
		- the method will print out the title of the song and the artist
- create a playlist class
	- create a method to initialize an argument
		- initialize the songs that will be put into an array
	- create a method to add the songs to the array
		- take the array and push the song into the array
	- create a method to measure the number of tracks within the playlist
		- find the length/size of the array to determine the number of tracks on the playlist
	- create a method to remove a song from the playlist
		- determine if the song is in the playlist
		- remove the song if it is in the list
	- create a method to play all the songs on the playlist
		- iterate through the array and apply the play method previously created
	- create a method to display the playlist
		- iterate through the playlist and print out all items within the array

=end


# Initial Solution

# class Song

#   attr_accessor :title, :artist

#   def initialize(title, artist)
#     @title = title
#     @artist = artist
#   end

#   def play
#     puts "#{@title} by #{@artist}"
#   end

# end


# class Playlist

#   attr_accessor :song_array

#   def initialize(*song_array)
#     @song_array = song_array
#   end

#   def add(*songs)
#     @song_array.push(songs).flatten!
#   end

#   def num_of_tracks
#     @song_array.length
#   end

#   def remove(song)
#     @song_array.delete(song)
#   end

#   def includes?(song)
#     @song_array.include?(song)
#   end

#   def play_all
#     @song_array.each do |song|
#       puts "#{song.title} by #{song.artist}"
#     end
#   end

#   def display
#     puts "All of your songs:"
#     @song_array.each do |song|
#       puts "#{song.title} by #{song.artist}"
#     end
#   end


# end


# Refactored Solution

class Song
  
	attr_reader :title
  
	def initialize(title, artist)
    	@title = title
    	@artist = artist
  	end
  
  	def play
    	puts "#{@title} by #{@artist}"
  	end
  
end

class Playlist
  
 	def initialize(*song_array)
    	@song_array = song_array
  	end

  	def add(*songs)
    	@song_array.push(songs).flatten!
  	end
  
  	def num_of_tracks
    	@song_array.length
  	end
  
  	def remove(song)
    	@song_array.delete(song)
  	end

  	def includes?(song)
    	@song_array.include?(song)
  	end
  
  	def play_all
    	@song_array.each do |song|
      		song.play
    	end
  	end
  
  	def display
    	@song_array.each do |song|
    		song.play
    	end
  	end
  
end


# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection

=begin

What concepts did you review in this challenge?

- I was able to review classes and manipulating arrays. I also reviewed the different scopes of inheritance.

What is still confusing to you about Ruby?

- I still struggle a bit with scope and accessing nested arrays, luckily I was able to find out the importance of flatten! and non private methods.

What are you going to study to get more prepared for Phase 1?

- I am planning to look over useful methods in Ruby, so I can better manipulate data and understand their use. This way I will know which method to use for certain situations.

=end