

class Song

   @@count = 0
   @@artists = []
   @@genres = []

   attr_accessor :name, :artist, :genre

   def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      
      @@count += 1
      @@genres << @genre
      @@artists << @artist
   end

   def Song.count
      @@count
   end

   def Song.artists
      @@artists.uniq
   end

   def Song.genres
      @@genres.uniq
   end

   def Song.genre_count
      genre_hash = Hash.new{0}
      @@genres.each {|genre| genre_hash[genre] += 1 }
      genre_hash
   end

   def Song.artist_count
      artist_hash = Hash.new{0}
      @@artists.each { |artist| artist_hash[artist] += 1 }
      artist_hash
   end

end
