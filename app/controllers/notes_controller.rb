class NotesController < ApplicationController
  before_action :set_note, only: %i[ show ]

  # TODO: fix this!
  def show
    @trial = Trial.new
    @patient_id = params[:patient_id]
    @patient = Patient.find @patient_id
    @session_id = params[:session_id]
    @session = Session.find @session_id
    @note_id = params[:id]
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params.merge!(session_id: params[:session_id]))

    respond_to do |format|
      if @note.save
        format.html { redirect_to patient_session_note_url(params[:patient_id], params[:session_id], @note.id), notice: message_successfully_created }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :description, :goal_id)
  end

  def message_successfully_created
    "You may now start Trials (for this Session) working towards the Patients Goal. " \
    "To switch Goals during this Session, create a new (or select and existing) Note with a different Goal. "
  end
end
