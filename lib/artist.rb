require 'pry'

<<<<<<< HEAD
include Concerns::Findable


=======
>>>>>>> 79d5ebc5addf4b4468f9f0d72b1842e1c48e8c19
class Artist

  attr_accessor :name
  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new
    @genres = Array.new
  end

  def songs
    @songs
  end

  def add_song(song)
    if song.artist == nil
      song.artist = self
    end
    if @songs.include?(song) == false
        @songs << song
    end
    @songs
  end

<<<<<<< HEAD
  def genres
    genres = Array.new
    @songs.each do |song|
      genres << song.genre
    end
    genres.uniq
=======
#  def genres=(genre)
#    if @genres.include?(genre) == false
#      @genres << genre
#    end
#  end

  def genres

    binding.pry

    all_songs = self.songs
    all_songs.each do |song|
      @genres << song.genre
    end
    @genres

>>>>>>> 79d5ebc5addf4b4468f9f0d72b1842e1c48e8c19
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    new_artist = Artist.new(name)
    @@all << new_artist
    new_artist
  end
end
