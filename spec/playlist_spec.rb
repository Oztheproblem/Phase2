require "playlist"

RSpec.describe Playlist do
 context "no input" do
    it "results as empty []" do
      new_playlist = Playlist.new
      expect(new_playlist.updated_list).to eq []
    end
  end

  context "correct input" do
    it "results as a string" do
      new_playlist = Playlist.new
      new_playlist.add_song("Harry Styles - Watermelon Sugar Pie") 
      expect(new_playlist.updated_list).to eq ["Harry Styles - Watermelon Sugar Pie"] 
    end
  end

  context "add another correct input" do
    it "results as a string" do
      new_playlist = Playlist.new
      new_playlist.add_song("Harry Styles - Watermelon Sugar Pie") 
      new_playlist.add_song("2pac - Hit 'em up") 
      expect(new_playlist.updated_list).to eq ["Harry Styles - Watermelon Sugar Pie", 
        "2pac - Hit 'em up"]
    end
  end
end
