class PensamientosController < ApplicationController
  # GET /pensamientos
  # GET /pensamientos.json
  def index
    @pensamientos = Pensamiento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pensamientos }
    end
  end

  # GET /pensamientos/1
  # GET /pensamientos/1.json
  def show
    @pensamiento = Pensamiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pensamiento }
    end
  end

  # GET /pensamientos/new
  # GET /pensamientos/new.json
  def new
    @pensamiento = Pensamiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pensamiento }
    end
  end

  # GET /pensamientos/1/edit
  def edit
    @pensamiento = Pensamiento.find(params[:id])
  end

  # POST /pensamientos
  # POST /pensamientos.json
  def create
    @pensamiento = Pensamiento.new(params[:pensamiento])

    respond_to do |format|
      if @pensamiento.save
        format.html { redirect_to @pensamiento, notice: 'Pensamiento was successfully created.' }
        format.json { render json: @pensamiento, status: :created, location: @pensamiento }
      else
        format.html { render action: "new" }
        format.json { render json: @pensamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pensamientos/1
  # PUT /pensamientos/1.json
  def update
    @pensamiento = Pensamiento.find(params[:id])

    respond_to do |format|
      if @pensamiento.update_attributes(params[:pensamiento])
        format.html { redirect_to @pensamiento, notice: 'Pensamiento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pensamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pensamientos/1
  # DELETE /pensamientos/1.json
  def destroy
    @pensamiento = Pensamiento.find(params[:id])
    @pensamiento.destroy

    respond_to do |format|
      format.html { redirect_to pensamientos_url }
      format.json { head :no_content }
    end
  end
end
