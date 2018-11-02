require 'pry'
require 'patient.rb'
require 'doctor.rb'

class Appointment

  attr_reader :patient, :doctor
  attr_accessor :date

  @@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date

    @@all << self
  end
  #binding.pry

  def self.all
    @@all
  end

end
