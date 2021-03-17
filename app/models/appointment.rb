class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def real_time
        "Appointment Date and Time Are:" "#{self.appointment_datetime.strftime("%B")}" + " " +"#{self.appointment_datetime.strftime("%d")}" + ", " +"#{self.appointment_datetime.strftime("%Y")}" + " at " +"#{self.appointment_datetime.strftime("%H:%M")}."
      end
end
                                      