class LessonOpinionsController < ApplicationController
  belongs_to :lesson, index: true
  before_action :set_lesson_opinion, only: [:show, :edit, :update, :destroy]

  # GET /lesson_opinions
  # GET /lesson_opinions.json
  def index
    @lesson_opinions = LessonOpinion.all
  end

  # GET /lesson_opinions/1
  # GET /lesson_opinions/1.json
  def show
  end

  # GET /lesson_opinions/new
  def new
    @lesson_opinion = LessonOpinion.new
  end

  # GET /lesson_opinions/1/edit
  def edit
  end

  # POST /lesson_opinions
  # POST /lesson_opinions.json
  def create
    @lesson_opinion = LessonOpinion.new(lesson_opinion_params)

    respond_to do |format|
      if @lesson_opinion.save
        format.html { redirect_to @lesson_opinion, notice: 'Lesson opinion was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_opinion }
      else
        format.html { render :new }
        format.json { render json: @lesson_opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_opinions/1
  # PATCH/PUT /lesson_opinions/1.json
  def update
    respond_to do |format|
      if @lesson_opinion.update(lesson_opinion_params)
        format.html { redirect_to @lesson_opinion, notice: 'Lesson opinion was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_opinion }
      else
        format.html { render :edit }
        format.json { render json: @lesson_opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_opinions/1
  # DELETE /lesson_opinions/1.json
  def destroy
    @lesson_opinion.destroy
    respond_to do |format|
      format.html { redirect_to lesson_opinions_url, notice: 'Lesson opinion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_opinion
      @lesson_opinion = LessonOpinion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_opinion_params
      params.fetch(:lesson_opinion, {})
    end
end
