class GoalsController < ApplicationController
  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params.merge(plan_of_care_id: params[:plan_of_care_id]))

    respond_to do |format|
      if @goal.save
        format.html { redirect_to patient_url(@goal.plan_of_care.patient), notice: message_successfully_created }
      else
        format.html { redirect_to patient_url(params[:patient_id]), alert: message_failed_to_create }
      end
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :description)
  end

  def message_successfully_created
    sessions_now_available = "You are now able to start a Patient Session." if @goal.plan_of_care.goals.count == 1
    "Goal was successfully created for #{@goal.plan_of_care.patient.name}. #{sessions_now_available}"
  end

  def message_failed_to_create
    "Doh! The Goal could not be created. Title is required."
  end
end
