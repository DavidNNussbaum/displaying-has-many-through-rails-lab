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
  
  