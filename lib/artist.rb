require 'pry'

class Artist
    extend Concerns::Findable
    attr_accessor :name, :songs, :genres

        @@all = []

    def initialize(name)
        @name = name
        @songs = []
        save
    end


    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

     def self.create(name)
        new_song = self.new(name)
        new_song
    end

    def add_song(song) # this code Andy
        if @songs.include?(song)
            nil
        else
            @songs << song 
        end

        if song.artist == nil
            song.artist = self
        else
            nil
        end
    end

    def genres

     arr = @songs.map {|song| song.genre}
     arr.uniq

    end



end