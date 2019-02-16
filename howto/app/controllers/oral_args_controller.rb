class OralArgsController < ApplicationController
  before_action :set_oral_arg, only: [:show, :edit, :update, :destroy]
  

  # GET /oral_args
  # GET /oral_args.json
  def index
    render json: OralArg.all
  end

  # GET /oral_args/1
  # GET /oral_args/1.json
  def show
    render json: OralArg.find(params[:id])
  end

  # GET /oral_args/new
  def new
    @oral_arg = OralArg.new
  end

  # GET /oral_args/1/edit
  def edit
  end

  # POST /oral_args
  # POST /oral_args.json
  def create
    @oral_arg = OralArg.new(oral_arg_params)

    respond_to do |format|
      if @oral_arg.save
        format.html { redirect_to @oral_arg, notice: 'Oral arg was successfully created.' }
        format.json { render :show, status: :created, location: @oral_arg }
      else
        format.html { render :new }
        format.json { render json: @oral_arg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oral_args/1
  # PATCH/PUT /oral_args/1.json
  def update
    respond_to do |format|
      if @oral_arg.update(oral_arg_params)
        format.html { redirect_to @oral_arg, notice: 'Oral arg was successfully updated.' }
        format.json { render :show, status: :ok, location: @oral_arg }
      else
        format.html { render :edit }
        format.json { render json: @oral_arg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oral_args/1
  # DELETE /oral_args/1.json
  def destroy
    @oral_arg.destroy
    respond_to do |format|
      format.html { redirect_to oral_args_url, notice: 'Oral arg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oral_arg
      @oral_arg = OralArg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oral_arg_params
      params.require(:oral_arg).permit(:link_url, :header_text, :desc_text)
    end
end
