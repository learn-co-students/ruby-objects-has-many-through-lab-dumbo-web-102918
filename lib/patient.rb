require 'pry'
class Patient
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
    end

    def appointments
      Appointment.all.select {|appt_ins| appt_ins.patient == self}

    end

  def doctors
    appointments.collect {|appt_ins| appt_ins.doctor}
    end

  def self.all
    @@all
  end

end
