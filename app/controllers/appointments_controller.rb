class AppointmentsController < ApplicationController
    def show
      @appointment= Appointment.find(params[:id])
    end
  
    def index
      @appointments = Appointment.all
    end
  
    def new
      @appointment = Appointment.new
  
    end
  
    def create
      appointment = Appointment.create(appointment_params)
      redirect_to appointments_path
    end

    def real_time
      "Appointment Date and Time Are: #{DateTime.strftime("%m-%d-%Y")} + "at" +#{ DateTime.strftime("%I:%M")}"
    end
  
    private
  
    def appointment_params
      params.require(:appointment_datetime).permit(
        doctors_attributes: [
          :name,
          :department
        ],
        patients_attributes: [
          :name,
          :age
        ],
      )
    end 
    
  end
  
  