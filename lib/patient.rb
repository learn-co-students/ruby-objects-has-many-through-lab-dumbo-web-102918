require 'pry'
require 'appointment.rb'
require 'doctor.rb'

class Patient

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
      appointment.patient == self
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end 

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  #def appointments
  #  @appointments
  #end

end
