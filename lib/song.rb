class Song
    @@name=[]
    @@artists=[]
    @@genres=[]
    @@count=0

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @@name.push(name)
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
    end
    def self.genres
        @@genres.uniq
    end
    def count
        @@name.length
    end
    def genre_counter(genre)
        genre_hash={}
    end
    def self.count
        @@count
    end
end


