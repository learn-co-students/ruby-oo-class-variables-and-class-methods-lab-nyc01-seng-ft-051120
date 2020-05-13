require 'pry'
class Song 
    attr_reader :name,:artist,:genre
    @@count = 0
    @@artists = []
    @@genres =[]
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists << artist
        @@genres << genre
    end 

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |x|
           if !genre_count[x] 
                genre_count[x] = 0
           end
           genre_count[x] += 1
        end
        genre_count 
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |x|
           if !artist_count[x] 
                artist_count[x] = 0
           end
           artist_count[x] += 1
        end
        artist_count 
    end
end