class PatientsController < ApplicationController
    def show
      @patient = Patient.find(params[:id])
    end
  
    def index
      @patients = Patient.all
    end
  
    def new
      @patient = Patient.new
    end
  
    def create
      patient = Patient.create(patient_params)
      redirect_to patients_path
    end
  
    private
  
    def patient_params
      params.require(:name).permit(
        :age,
        doctors_attributes: [
          :name,
          :department
        ],
        appointments_attributes: [
          :appointment_datetime  
        ],
      )
    end 
    
  end
  
  