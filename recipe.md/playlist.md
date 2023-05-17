## 1. Describe the Problem
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Method Signature
_Include the name of the method, its parameters, return value, and side effects._
```ruby
class Playlist

def initialize
@playlist = []
end

def add_song(song)
#add songs to the playlist
end

def updated_list # added to playlist
#return the list of added songs
end

end

```
## 3. Create Examples as Tests
_Make a list of examples of what the method will take and return._
```ruby
#1 no input
new_playlist = Playlist.new
new_playlist.add_song
=> false

#2 correct input
new_playlist = Playlist.new
new_playlist.add_song("Harry Styles - Watermelon Sugar Pie") 
new_playlist.updated_list
=> ["Harry Styles - Watermelon Sugar Pie"] 

#3 another correct input
new_playlist = Playlist.new
new_playlist.add_song("Harry Styles - Watermelon Sugar Pie") 
new_playlist.add_song("2pac - Hit 'em up") 
new_playlist.updated_list
=> ["Harry Styles - Watermelon Sugar Pie", 
"2pac - Hit 'em up"
]

```
_Encode each example as a test. You can add to the above list as you go._
## 4. Implement the Behaviour
