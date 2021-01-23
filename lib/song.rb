require 'pry'

class Song

    attr_accessor :name, :artist 
    attr_reader :genre

    @@all = []

    def initialize(name, artist = nil, genre = nil)
        @name = name
        self.artist=(artist) if artist != nil #"invokes #artist= instead of simply assigning to an @artist instance variable to ensure that associations are created upon initialization" do
        # @genre = genre
        self.genre=(genre) if  genre != nil
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


     def artist=(artist)
        @artist = artist
        artist.add_song(self) 
     end

     def genre=(genre)
            @genre = genre
        if genre.songs.include?(self)
            nil
        else
            genre.songs << self
        end
      end
         
      def self.find_by_name(name)
          @@all.find {|song| song.name == name}  
      end


      def self.find_or_create_by_name(name)
             self.find_by_name(name) || self.create(name)              
      end











    end






