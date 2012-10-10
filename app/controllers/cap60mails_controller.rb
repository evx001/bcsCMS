class Cap60mailsController < ApplicationController
  # GET /cap60mails
  # GET /cap60mails.json
  def index
    @cap60mails = Cap60mail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cap60mails }
    end
  end

  # GET /cap60mails/1
  # GET /cap60mails/1.json
  def show
    @cap60mail = Cap60mail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cap60mail }
    end
  end

  # GET /cap60mails/new
  # GET /cap60mails/new.json
  def new
    @cap60mail = Cap60mail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cap60mail }
    end
  end

  # GET /cap60mails/1/edit
  def edit
    @cap60mail = Cap60mail.find(params[:id])
  end

  # POST /cap60mails
  # POST /cap60mails.json
  def create
    @cap60mail = Cap60mail.new(params[:cap60mail])

    respond_to do |format|
      if @cap60mail.save
        format.html { redirect_to @cap60mail, notice: 'Cap60mail was successfully created.' }
        format.json { render json: @cap60mail, status: :created, location: @cap60mail }
      else
        format.html { render action: "new" }
        format.json { render json: @cap60mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cap60mails/1
  # PUT /cap60mails/1.json
  def update
    @cap60mail = Cap60mail.find(params[:id])

    respond_to do |format|
      if @cap60mail.update_attributes(params[:cap60mail])
        format.html { redirect_to @cap60mail, notice: 'Cap60mail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cap60mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cap60mails/1
  # DELETE /cap60mails/1.json
  def destroy
    @cap60mail = Cap60mail.find(params[:id])
    @cap60mail.destroy

    respond_to do |format|
      format.html { redirect_to cap60mails_url }
      format.json { head :no_content }
    end
  end
end
