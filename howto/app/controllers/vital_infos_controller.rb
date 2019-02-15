class VitalInfosController < ApplicationController
  before_action :set_vital_info, only: [:show, :edit, :update, :destroy]
  belongs_to :lesson, index: true

  # GET /vital_infos
  # GET /vital_infos.json
  def index
    @vital_infos = VitalInfo.all
  end

  # GET /vital_infos/1
  # GET /vital_infos/1.json
  def show
  end

  # GET /vital_infos/new
  def new
    @vital_info = VitalInfo.new
  end

  # GET /vital_infos/1/edit
  def edit
  end

  # POST /vital_infos
  # POST /vital_infos.json
  def create
    @vital_info = VitalInfo.new(vital_info_params)

    respond_to do |format|
      if @vital_info.save
        format.html { redirect_to @vital_info, notice: 'Vital info was successfully created.' }
        format.json { render :show, status: :created, location: @vital_info }
      else
        format.html { render :new }
        format.json { render json: @vital_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vital_infos/1
  # PATCH/PUT /vital_infos/1.json
  def update
    respond_to do |format|
      if @vital_info.update(vital_info_params)
        format.html { redirect_to @vital_info, notice: 'Vital info was successfully updated.' }
        format.json { render :show, status: :ok, location: @vital_info }
      else
        format.html { render :edit }
        format.json { render json: @vital_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vital_infos/1
  # DELETE /vital_infos/1.json
  def destroy
    @vital_info.destroy
    respond_to do |format|
      format.html { redirect_to vital_infos_url, notice: 'Vital info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vital_info
      @vital_info = VitalInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vital_info_params
      params.fetch(:vital_info, {})
    end
end
