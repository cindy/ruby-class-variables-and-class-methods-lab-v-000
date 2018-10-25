class Song
  @@count = 0
  @@artists = []
  @@genres = Hash.new(0)

  attr_accessor(:name, :artist, :genre)

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    #@@genres[@genre] += 1
    #require 'pry'; binding.pry
  end


end
