class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artist = []
  @@genre = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genre << genre
    @@artist << artist

  end

  def self.count
    @@count
  end

  def self.genre_count(@@genre)
    genres_hash = {}
    @@genre.each do |name|
      while i < @@genre.length
        if genres_hash[name] == name
          genres[name] += 1
        else
          genres_hash[name] = 1
        end
      end
    end
    genres_hash
  end

end
