class SessionsController < ApplicationController
  before_action :set_session, only: %i[ show ]
  before_action :set_patient, only: %i[ show new create ]

  def show
    @note = Note.new
    @goals = @patient.plan_of_care.goals
  end

  def new
    @session = Session.new

    unless @patient.goals?
      respond_to do |format|
        format.html { redirect_to patient_url(@patient), alert: message_no_goals_exist }
      end
    end
  end

  def create
    @session = Session.new(session_params.merge(patient: @patient))

    respond_to do |format|
      if @session.save
        format.html { redirect_to patient_session_path(@patient, @session), notice: message_successfully_created }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_session
    @session = Session.find(params[:id])
  end

  def set_patient
    @patient = Patient.find(params[:patient_id])
  end

  def session_params
    params.require(:session).permit(:title, :description)
  end

  def message_no_goals_exist
    "At least 1 Patient Goal is required before you may start a new Session. Please add one below."
  end

  def message_successfully_created
    "Session was successfully created."
  end
end
