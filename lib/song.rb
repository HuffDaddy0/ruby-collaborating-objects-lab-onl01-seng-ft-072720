class Song
  attr_accessor :title, :artist

@@all = []
  def initialize(title)
    self.title = title
    @@all << self
  end

def self.all
  @@all
end

def new_by_filename(filename)
  names = filename.split(" - ")
  song = Song.new(names[0])
  song.artist = names[2]
