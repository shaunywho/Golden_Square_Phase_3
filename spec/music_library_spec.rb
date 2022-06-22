require 'music_library'
require 'track'


RSpec.describe MusicLibrary do
  it "tests construction of MusicLibrary" do
    music_library = MusicLibrary.new
  end 
  it "returns a list of tracks added to MusicLibrary" do
    music_library = MusicLibrary.new
    track = double(:fake_track)
    music_library.add(track)
    expect(music_library.all).to eq [track]
    
  end 
  it "returns a list of tracks that match keywords" do
    music_library = MusicLibrary.new
    kw = "test"
    track_1 = double(:fake_track, matches?: true)
    track_2 = double(:fake_track, matches?: false)
    track_3 = double(:fake_track, matches?: true)
    music_library.add(track_1)
    music_library.add(track_2)
    music_library.add(track_3)
    expect(music_library.search(kw)).to eq [track_1,track_3]
    
  end 


end 


RSpec.describe Track do
  it "tests construction of Track" do
    title = "title"
    artist = "artist"
    track = Track.new(title,artist)
  end
  it "tests if a keyword can be found in the title or artist name" do
    title = "title"
    artist = "artist"
    track = Track.new(title,artist)
    expect(track.matches?(title)).to eq true
  end

end

RSpec.describe "Integration of Track and MusicLibrary" do
  it "returns a list of tracks that match keywords" do
    music_library = MusicLibrary.new
    track_1 = Track.new("Lawrence", "Do you wanna do nothing with me?" )
    track_2 = Track.new("Tool", "Lateralus")
    kw = "Lateralus"
    music_library.add(track_1)
    music_library.add(track_2)
    expect(music_library.search(kw)).to eq [track_2]
  end

end 

