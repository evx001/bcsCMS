class DycdsController < ApplicationController
  # GET /dycds
  # GET /dycds.json
  def index
    @dycds = Dycd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dycds }
    end
  end

  # GET /dycds/1
  # GET /dycds/1.json
  def show
    @dycd = Dycd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dycd }
    end
  end

  # GET /dycds/new
  # GET /dycds/new.json
  def new
    @dycd = Dycd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dycd }
    end
  end

  # GET /dycds/1/edit
  def edit
    @dycd = Dycd.find(params[:id])
  end

  # POST /dycds
  # POST /dycds.json
  def create
    @dycd = Dycd.new(params[:dycd])

    respond_to do |format|
      if @dycd.save
        format.html { redirect_to @dycd, notice: 'Dycd was successfully created.' }
        format.json { render json: @dycd, status: :created, location: @dycd }
      else
        format.html { render action: "new" }
        format.json { render json: @dycd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dycds/1
  # PUT /dycds/1.json
  def update
    @dycd = Dycd.find(params[:id])

    respond_to do |format|
      if @dycd.update_attributes(params[:dycd])
        format.html { redirect_to @dycd, notice: 'Dycd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dycd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dycds/1
  # DELETE /dycds/1.json
  def destroy
    @dycd = Dycd.find(params[:id])
    @dycd.destroy

    respond_to do |format|
      format.html { redirect_to dycds_url }
      format.json { head :no_content }
    end
  end
end
