class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end

    def doctors
      appointments.map do |app|
        app.doctor
      end
  end

  def self.all
    @@all
  end

end
