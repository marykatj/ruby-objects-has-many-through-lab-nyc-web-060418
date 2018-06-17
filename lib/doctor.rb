require_relative "./patient"
require_relative "./appointment"

class Doctor

attr_reader :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_appointment(patient, date)
  appointment = Appointment.new(date)
  appointment.patient = self
end

def appointments
  Appointment.all.select do |appointment|
    return appointment.doctor == self
  end
end

def patients
  appointments.map do |appointment|
    appointment.patient
  end.uniq
end

end
