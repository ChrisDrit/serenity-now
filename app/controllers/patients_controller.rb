class PatientsController < ApplicationController
  before_action :set_patient, only: %i[ show update ]

  def index
    @patients = Patient.all
    @patient = Patient.new
  end

  def show
    @goal = Goal.new
    @patient = Patient.find(params[:id])
    @plan_of_care = @patient.plan_of_care
    @goals = @plan_of_care.goals.order(created_at: :desc)
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to patient_url(@patient), notice: message_successfully_created }
      else
        format.html { redirect_to root_url, alert: message_failed_create }
      end
    end
  end

  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patient_url(@patient), notice: message_successfully_updated }
      else
        format.html { redirect_to patient_url(@patient), alert: message_failed_update }
      end
    end
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name)
  end

  def message_successfully_created
    "The Patient, and a default Plan of Care was successfully created. " \
    "Now add some Goals, and you'll be ready to start a new Patient Session!"
  end

  def message_failed_create
    "Failed to create a new Patient. The Patient name is required."
  end

  def message_successfully_updated
    "Patient was successfully updated."
  end

  def message_failed_update
    "Doh! The Patient could not be update. Patient name is required."
  end

end
