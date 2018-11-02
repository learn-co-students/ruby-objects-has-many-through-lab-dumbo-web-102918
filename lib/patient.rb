class Patient
  @@all = []
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  def appointments
    Appointment.all.select do |schedule|
      schedule.patient == self
    end
  end
  def doctors
    appointments.map {|x| x.doctor}
  end
end
