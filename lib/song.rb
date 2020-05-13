require 'pry'

class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist
    end


    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq do |array_index|
            array_index
        end
    end

    #no duplicates allowed
    def self.genres
        @@genres.uniq do |array_index|
            array_index
        end
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |array_index|
            num = @@genres.count do |other_indexes|
                    array_index == other_indexes
                    end
            genre_hash[array_index] = num
        end
        genre_hash
    
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |array_index|
            num = @@artists.count do |other_indexes|
                    array_index == other_indexes
                    end
            artist_hash[array_index] = num
        end
        artist_hash
    end


end