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
    #require 'pry'; binding.pry
    @@genres[@genre] += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.keys
  end

  def self.genre_count
    @@genres
  end
end
