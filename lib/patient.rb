class Patient
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  # def songs
  #    Song.all.select{|song|song.artist == self || song.genre == self }
  # end
  # def artists
  #     songs.map{|song|song.artist}
  # end
end
