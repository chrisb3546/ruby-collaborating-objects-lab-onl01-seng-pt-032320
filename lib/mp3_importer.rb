require 'pry'
class MP3Importer

    attr_accessor :path
    
    def initialize(path)
        @path = path
        #binding.pry
    end

    def files
        Dir.glob("#{path}/*").map  do |filename|
            filename.split("/").last


        end
       #binding.pry
        

    end
    # Build an `MP3Importer` class that parses a directory of files and sends the
    # filenames to a song class to create a library of music with artists that are
    # unique. To do this, you'll need two methods: `Mp3Importer#files` and
    # `MP3Importer#import`. Your `MP3Importer` class should also have a `path`
    # attribute that gets set on initialization.
    
    # You should write code that responds to
    # `MP3Importer.new('./spec/fixtures').import`. Google around for how to get a list
    # of files in a directory! Make sure you only get `.mp3` files.
    
    # Since we have to send the filenames to the `Song` class, we'll end up calling
    # the following code in the `#import` method:
    # `Song.new_by_filename(some_filename)`. This will send us to the `Song` class,
    # specifically `Song.new_by_filename` and handle the creation of `Song` instances
    # and their associated `Artist` instances.
    def import
        files.each {|song|Song.new_by_filename(song)}
    
    end
      
    

end