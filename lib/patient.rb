class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
@name=name
@@all << self
  end

def self.all
@@all
end

def new_appointment(doctor, date)
Appointment.new(date, self, doctor)
end

def appointments
  Appointment.all.select do |appt|
    appt.patient == self
end
end

# def doctors
#     appointments.map(&:doctor)
  # end
def doctors
  doctor_list = []
  appointments.select do |doctor|
  doctor_list << doctor.doctor
  end
doctor_list
end
end
