# describe "MusicImporter" do
#   let(:music_importer) { MusicImporter.new("./spec/fixtures/mp3s") }
require 'pry'
class MusicImporter

        attr_accessor :path

    def initialize(path)
        @path = path
    end
        
    def files
          @files =Dir.entries(@path) #need to go over this , Dir method, entries method
        # binding.pry
        @files.delete_if {|file| file == "." || file == ".."}
        
    end

    def import
        files.each {|file| Song.create_from_filename(file)}
    end






end