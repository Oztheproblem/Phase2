## 1. Describe the Problem
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Method Signature
_Include the name of the method, its parameters, return value, and side effects._
```ruby
class Playlist
    # def initialize
    #   @playlist = []
    # end
def add(artist, song) 
    # artist and song are parsed as string
    # fail "Nothing added" unless @playlist.include? song
    # playlist = [artist: artist, song: song]
    # @playlist < < playlist
    # end
def added_song
    # @playlist.each_with_index do |artist, song|
    # puts @playlist
    # end
  end
```
## 3. Create Examples as Tests
_Make a list of examples of what the method will take and return._
```ruby
#1
new_playlist = Playlist.new
new_playlist.add = []

#2
new_playlist = Playlist.new
new_playlist.add = new_playlist.add["Harry Styles": "watermelon sugar pie"]
new_playlist.added_song => ["Harry Styles": "watermelon sugar pie"]

#3
new_playlist = Playlist.new
new_playlist.add = new_playlist.add["Harry Styles": "watermelon sugar pie"]
new_playlist.add = new_playlist.add["2pac": "Hit 'Em up"]
new_playlist.added_song => ["Harry Styles": "watermelon sugar pie"]


```
_Encode each example as a test. You can add to the above list as you go._
## 4. Implement the Behaviour
