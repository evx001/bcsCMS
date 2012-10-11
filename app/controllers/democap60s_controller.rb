class Democap60sController < ApplicationController
  # GET /democap60s
  # GET /democap60s.json
  def index
    @democap60s = Democap60.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @democap60s }
    end
  end

  # GET /democap60s/1
  # GET /democap60s/1.json
  def show
    @democap60 = Democap60.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @democap60 }
    end
  end

  # GET /democap60s/new
  # GET /democap60s/new.json
  def new
    @democap60 = Democap60.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @democap60 }
    end
  end

  # GET /democap60s/1/edit
  def edit
    @democap60 = Democap60.find(params[:id])
  end

  # POST /democap60s
  # POST /democap60s.json
  def create
    @democap60 = Democap60.new(params[:democap60])

    respond_to do |format|
      if @democap60.save
        format.html { redirect_to @democap60, notice: 'Democap60 was successfully created.' }
        format.json { render json: @democap60, status: :created, location: @democap60 }
      else
        format.html { render action: "new" }
        format.json { render json: @democap60.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /democap60s/1
  # PUT /democap60s/1.json
  def update
    @democap60 = Democap60.find(params[:id])

    respond_to do |format|
      if @democap60.update_attributes(params[:democap60])
        format.html { redirect_to @democap60, notice: 'Democap60 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @democap60.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /democap60s/1
  # DELETE /democap60s/1.json
  def destroy
    @democap60 = Democap60.find(params[:id])
    @democap60.destroy

    respond_to do |format|
      format.html { redirect_to democap60s_url }
      format.json { head :no_content }
    end
  end
end
