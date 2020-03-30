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
  def new_appointment(doctor,date)
     Appointment.new(date,self,doctor)
  end
  def appointments
     Appointment.all.select{|appointment| appointment.doctor == self }
  end
end
