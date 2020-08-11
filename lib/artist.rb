class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.find_all{|song| song.artist.name == self}
  end

  def self.find_or_create_by_name(name)
  if self.all.find {|artist| artist.name.include?(name)}
    self.all.find{|artist| artist.name}
  else
    self.new(name)
