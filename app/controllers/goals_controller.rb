class GoalsController < ApplicationController
  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params.merge(plan_of_care_id: params[:plan_of_care_id]))

    respond_to do |format|
      if @goal.save
        format.html { redirect_to patient_url(@goal.plan_of_care.patient), notice: "Goal was successfully created for #{@goal.plan_of_care.patient.name}." }
      else
        format.html { redirect_to patient_url(params[:patient_id]), alert: "Doh! The Goal could not be created. Title is required." }
      end
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :description)
  end
end
