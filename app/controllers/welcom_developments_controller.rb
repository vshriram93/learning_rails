class WelcomDevelopmentsController < ApplicationController
  # GET /welcom_developments
  # GET /welcom_developments.json
  def index
    @welcom_developments = WelcomDevelopment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @welcom_developments }
    end
  end

  # GET /welcom_developments/1
  # GET /welcom_developments/1.json
  def show
    @welcom_development = WelcomDevelopment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @welcom_development }
    end
  end

  # GET /welcom_developments/new
  # GET /welcom_developments/new.json
  def new
    @welcom_development = WelcomDevelopment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @welcom_development }
    end
  end

  # GET /welcom_developments/1/edit
  def edit
    @welcom_development = WelcomDevelopment.find(params[:id])
  end

  # POST /welcom_developments
  # POST /welcom_developments.json
  def create
    @welcom_development = WelcomDevelopment.new(params[:welcom_development])

    respond_to do |format|
      if @welcom_development.save
        format.html { redirect_to @welcom_development, notice: 'Welcom development was successfully created.' }
        format.json { render json: @welcom_development, status: :created, location: @welcom_development }
      else
        format.html { render action: "new" }
        format.json { render json: @welcom_development.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /welcom_developments/1
  # PUT /welcom_developments/1.json
  def update
    @welcom_development = WelcomDevelopment.find(params[:id])

    respond_to do |format|
      if @welcom_development.update_attributes(params[:welcom_development])
        format.html { redirect_to @welcom_development, notice: 'Welcom development was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @welcom_development.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /welcom_developments/1
  # DELETE /welcom_developments/1.json
  def destroy
    @welcom_development = WelcomDevelopment.find(params[:id])
    @welcom_development.destroy

    respond_to do |format|
      format.html { redirect_to welcom_developments_url }
      format.json { head :no_content }
    end
  end
end
