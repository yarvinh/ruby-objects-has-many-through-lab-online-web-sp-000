class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
   def appointments
      Appointment.all.select{|Appointment|appointment.doctor == self || song.genre == self }
   end
#   def new_song(song,genres)
#     Song.new(song,self,genres)
# end
# def genres
#   songs.map{|song|song.genre}
# end
end
