class Doctor
  @@all = []
  attr_reader :name
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  def appointments
    Appointment.all.select do |schedule|
      schedule.doctor == self
    end
  end
  def patients
    appointments.map {|x| x.patient}
  end
end
