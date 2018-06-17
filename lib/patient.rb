require 'pry'

class Patient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
end

def new_appointment(doctor, date)
  appointment = Appointment.new(date)
  appointment.doctor = self
end

def appointments
  Appointment.all.select do |appointment|
  return appointment.patient == self
end
end

def doctors
  appointments.map do |appointment|
    appointment.doctor = self
end.uniq
end

end
