class DoctorsController < ApplicationController
    def show
      @doctor = Doctor.find(params[:id])
    end
  
    def index
      @doctors = Doctor.all
    end
  
    def new
      @doctor = Doctor.new
       
    end
  
    def create
      doctor = Doctor.create(doctor_params)
      redirect_to doctors_path
    end
  
    private
  
    def doctor_params
      params.require(:name).permit(:department,
        patients_attributes: [
          :name,
          :age
        ],
        appointments_attributes: [
          :appointment_datetime  
        ],
      )
    end 
    
  end
  
  