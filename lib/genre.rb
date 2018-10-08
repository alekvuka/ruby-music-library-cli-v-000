class Genre

  attr_accessor :name
  @@all = Array.new

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def songs
    @songs
  end

  def songs=(song)
    @songs << song
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
    new_genre = Genre.new(name)
    @@all << new_genre
    new_genre
  end

end
