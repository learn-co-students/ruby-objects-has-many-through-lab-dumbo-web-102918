require 'pry'

class Doctor

  attr_accessor :name, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(date, self, patient)
    appointment.doctor = self
    appointment
  end

  def appointments
    this_doctors_appointments = Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

end
