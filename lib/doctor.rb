class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment (date, patient)
    Appointment.new(patient,self,date)
  end

  def appointments
    Appointment.all.select{|appoi| appoi.doctor == self}
  end

  def patients
    appointments.map{|app| app.patient}
  end

  def self.all
    @@all
  end

end
