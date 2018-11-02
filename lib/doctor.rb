require 'pry'
require 'appointment.rb'
require 'patient.rb'

class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []

    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end 

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
    #binding.pry
  end

  #def appointments
  #  @appointments
#  end

end
