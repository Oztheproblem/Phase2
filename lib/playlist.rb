class Playlist
    def initialize
    @playlist = []
    end
    
    def add_song(song)
      @playlist << song
    end
    
    def updated_list 
        return @playlist
    end
end