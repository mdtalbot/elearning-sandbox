class LessonOralArgumentsController < ApplicationController
  before_action :set_lesson_oral_argument, only: [:show, :edit, :update, :destroy]
  belongs_to :lesson, index: true

  # GET /lesson_oral_arguments
  # GET /lesson_oral_arguments.json
  def index
    @lesson_oral_arguments = LessonOralArgument.all
  end

  # GET /lesson_oral_arguments/1
  # GET /lesson_oral_arguments/1.json
  def show
  end

  # GET /lesson_oral_arguments/new
  def new
    @lesson_oral_argument = LessonOralArgument.new
  end

  # GET /lesson_oral_arguments/1/edit
  def edit
  end

  # POST /lesson_oral_arguments
  # POST /lesson_oral_arguments.json
  def create
    @lesson_oral_argument = LessonOralArgument.new(lesson_oral_argument_params)

    respond_to do |format|
      if @lesson_oral_argument.save
        format.html { redirect_to @lesson_oral_argument, notice: 'Lesson oral argument was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_oral_argument }
      else
        format.html { render :new }
        format.json { render json: @lesson_oral_argument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_oral_arguments/1
  # PATCH/PUT /lesson_oral_arguments/1.json
  def update
    respond_to do |format|
      if @lesson_oral_argument.update(lesson_oral_argument_params)
        format.html { redirect_to @lesson_oral_argument, notice: 'Lesson oral argument was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_oral_argument }
      else
        format.html { render :edit }
        format.json { render json: @lesson_oral_argument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_oral_arguments/1
  # DELETE /lesson_oral_arguments/1.json
  def destroy
    @lesson_oral_argument.destroy
    respond_to do |format|
      format.html { redirect_to lesson_oral_arguments_url, notice: 'Lesson oral argument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_oral_argument
      @lesson_oral_argument = LessonOralArgument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_oral_argument_params
      params.fetch(:lesson_oral_argument, {})
    end
end
