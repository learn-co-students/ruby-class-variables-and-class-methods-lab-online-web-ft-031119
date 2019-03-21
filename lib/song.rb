class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  
  def self.count
    @@count
  end
  
  @@genres = []
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count = Hash.new(0)
      @@genres.each {|value| genre_count[value] += 1}
    genre_count
  end
  
  @@artists = []
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.artist_count
    artists_count = Hash.new(0)
     @@artists.each {|value| artists_count[value] += 1}
    artists_count
  end
     
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
    @@artists << artist
    @@genres << genre
    @@count += 1
  end
end