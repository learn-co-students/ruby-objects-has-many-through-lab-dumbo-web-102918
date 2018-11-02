require 'pry'
class Doctor
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
  def appointments
    Appointment.all.select {|appt_ins| appt_ins.doctor == self}
  end
  def patients
    appointments.collect {|appt_ins| appt_ins.patient}
    end

  def self.all
    @@all
  end

end
