require 'pry'

class Appointment
  @@all = []
  attr_accessor :date, :doctor, :patient
  #How would I know from the directions that I am supposed
  # to put these instances under an accessor?


  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
end
