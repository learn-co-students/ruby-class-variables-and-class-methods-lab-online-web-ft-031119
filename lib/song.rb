class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @@artists << artist 
    @genre = genre 
    @@genres << genre
    @@count += 1 
  end
  
  def self.count
    @@count 
  end
  
  def self.genres 
    output = []
    @@genres.each do |value|
      output << value unless output.include?(value)
    end
    output
  end
  
  def self.artists
    output = []
    @@artists.each do |value|
      output << value unless output.include?(value)
    end
    output
  end
  
  def self.genre_count
    output = Hash.new(0)
    @@genres.each do |value|
      output[value] += 1 
    end
    output
  end
  
  def self.artist_count
    output = Hash.new(0)
    @@artists.each do |value|
      output[value] += 1 
    end
    output
  end
end