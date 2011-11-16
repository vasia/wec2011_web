class ParticipantsController < ApplicationController
  # GET /participants
  # GET /participants.json
  def index
    @participants = Participant.all

    respond_to do |format|
      format.html {redirect_to home_path}
    end
  end

  # GET /participants/1
  # GET /participants/1.json
  def show
      respond_to do |format|
      format.html {redirect_to home_path}  end
  end

  # GET /participants/new
  # GET /participants/new.json
  def new
    @participant = Participant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @participant }
    end
  end

  # GET /participants/1/edit
  def edit
    format.html {redirect_to home_path}
  end

  # POST /participants
  # POST /participants.json
  def create

    @participant = Participant.new(params[:participant])

	require 'fileutils'
	@tmp = params[:cv_file]

    respond_to do |format|
      if @participant.save

        # Tell the ParticipantMailer to send an e-mail
        ParticipantMailer.participate_email(@participant, @tmp).deliver

	#format.html {redirect_to home_path}

	format.html { render action: "created" }
        #format.html { redirect_to @participant, notice: 'Participant was successfully created.' }
        format.json { render json: @participant, status: :created, location: @participant }
      else
        format.html { render action: "new" }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end


  # after a participant is created redirect to "thank you" page
  def created
      respond_to do |format|
      format.html # created.html.erb
    end
  end

  # PUT /participants/1
  # PUT /participants/1.json
  def update
    respond_to do |format|
      format.html {redirect_to home_path}
    end
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    respond_to do |format|
     format.html {redirect_to home_path}
    end
  end
end
