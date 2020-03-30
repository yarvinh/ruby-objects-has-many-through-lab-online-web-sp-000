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
      Appointment.all.select{|appointment|if appointment.doctor == self  
        appointment
      end}
   end
   def new_appointment(patient,date)
      Appointment.new(patient,self,date)
   end
# def genres
#   songs.map{|song|song.genre}
# end
end
