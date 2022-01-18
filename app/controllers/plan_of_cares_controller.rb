class PlanOfCaresController < ApplicationController
  before_action :set_plan_of_care, only: %i[ update ]

  def update
    respond_to do |format|
      if @plan_of_care.update(plan_of_care_params)
        format.html { redirect_to patient_url(@plan_of_care.patient), notice: message_succussfully_updated }
      else
        format.html { redirect_to patient_url(@plan_of_care.patient), alert: message_failed_to_update }
      end
    end
  end

  private

  def set_plan_of_care
    @plan_of_care = PlanOfCare.find(params[:id])
  end

  def plan_of_care_params
    params.require(:plan_of_care).permit(:description)
  end

  def message_succussfully_updated
    "Plan of Care was successfully updated for #{@plan_of_care.patient.name}."
  end

  def message_failed_to_update
    "Doh! Plan of Care could not be updated for #{@plan_of_care.patient.name}."
  end
end
