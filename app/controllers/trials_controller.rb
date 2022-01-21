class TrialsController < ApplicationController
  before_action :set_instance_vars, only: %i[ create ]

  def create
    @trial = Trial.new(trial_params.merge!(note_id: @note_id))

    respond_to do |format|
      if @trial.save
        format.html { redirect_to patient_session_note_url(@patient_id, @session_id, @note_id), notice: message_successfully_created }
      else
        format.html { redirect_to patient_session_note_url(@patient_id, @session_id, @note_id), alert: message_failured_to_create }
      end
    end
  end

  private

  def trial_params
    params.require(:trial).permit(:name)
  end

  def set_instance_vars
    @note_id = params[:note_id]
    @session_id = params[:session_id]
    @patient_id = params[:patient_id]
  end

  def message_successfully_created
    "Trial was successfully created for this Note."
  end

  def message_failured_to_create
    "Trial was not created. The name field is required."
  end

end
