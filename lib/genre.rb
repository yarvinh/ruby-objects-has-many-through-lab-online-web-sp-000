class Genre
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
  end
  def songs
     Song.all.select{|song|song.artist == self || song.genre == self }
  end
end
