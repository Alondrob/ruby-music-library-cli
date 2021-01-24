require 'pry'

class Genre
    extend Concerns::Findable

#   describe "Associations — Song and Genre:" do
#   let(:song) { Song.new("In the Aeroplane Over the Sea") }
#   let(:genre) { Genre.new("indie rock") } 

    attr_accessor :name, :songs, :artists
        @@all = []

    def initialize(name)
        @name = name
        @songs = []
        # save
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
        new_song.save
        new_song
     end

     def artists
            arr = @songs.map {|song| song.artist}
            arr.uniq
     end








end