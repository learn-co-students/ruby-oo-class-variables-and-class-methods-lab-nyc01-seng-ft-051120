class Song
    @@name=[]
    @@artists=[]
    @@genres=[]
    @@count=0
   

    attr_accessor :name, :artist, :genre, :count

    def initialize(name, artist, genre)
        @@name << name
        @@artists.push(artist)
        @@genres.push(genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count +=1
        
    end
    def self.artists
        @@artists.uniq
    end
    def self.names
        @@name
        binding.pry
    end
    def self.genres
        @@genres.uniq
    end

    # def self.count
    #     @@name.length
    # end

    def self.genre_count
        genre_counter={}
        @@genres.each{|gern|
        if genre_counter[gern]
            genre_counter[gern] +=1
        else genre_counter[gern]=1
        end
        }

        genre_counter
    end
    def self.count
        @@count
    end
    def self.artist_count
        artist_count={}
        @@artists.each{|ele|
        if artist_count[ele]
            artist_count[ele] +=1
        else
            artist_count[ele]=1
        end
        }
        artist_count
    end
end


