class PatientsController < ApplicationController
  before_action :set_patient, only: %i[ show update ]

  def index
    @patients = Patient.all
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
        format.html { redirect_to patient_url(@patient), notice: "The Patient, and their Plan of Care was successfully created. Now add some Goals!" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patient_url(@patient), notice: "Patient was successfully updated." }
      else
        format.html { redirect_to patient_url(@patient), alert: "Doh! The Patient could not be update. Patient name is required." }
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
end
