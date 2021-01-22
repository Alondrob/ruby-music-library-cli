require 'pry'

class Song

    attr_accessor :name

    @@all = []

    def initialize(name)

        @name = name
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




end