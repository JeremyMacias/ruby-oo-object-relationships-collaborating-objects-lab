class Artist
    
    attr_accessor :name, :songs, :artist

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
    end

    def self.find_or_create_by_name(name)
        name_found = self.all.find {|artist| artist.name == name}
        if name_found
            name_found
        else
            artist_new = self.new(name)
            artist_new
        end
        
    end

    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end

    def songs
        @songs
    end


end