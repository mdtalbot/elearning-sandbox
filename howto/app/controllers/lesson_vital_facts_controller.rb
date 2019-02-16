class LessonVitalFactsController < ApplicationController
  before_action :set_lesson_vital_fact, only: [:show, :edit, :update, :destroy]
  

  # GET /lesson_vital_facts
  # GET /lesson_vital_facts.json
  def index
    render json: LessonVitalFact.all
  end

  # GET /lesson_vital_facts/1
  # GET /lesson_vital_facts/1.json
  def show
    render json: LessonVitalFact.find(params[:id])
  end

  # GET /lesson_vital_facts/new
  def new
    @lesson_vital_fact = LessonVitalFact.new
  end

  # GET /lesson_vital_facts/1/edit
  def edit
  end

  # POST /lesson_vital_facts
  # POST /lesson_vital_facts.json
  def create
    @lesson_vital_fact = LessonVitalFact.new(lesson_vital_fact_params)

    respond_to do |format|
      if @lesson_vital_fact.save
        format.html { redirect_to @lesson_vital_fact, notice: 'Lesson vital fact was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_vital_fact }
      else
        format.html { render :new }
        format.json { render json: @lesson_vital_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_vital_facts/1
  # PATCH/PUT /lesson_vital_facts/1.json
  def update
    respond_to do |format|
      if @lesson_vital_fact.update(lesson_vital_fact_params)
        format.html { redirect_to @lesson_vital_fact, notice: 'Lesson vital fact was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_vital_fact }
      else
        format.html { render :edit }
        format.json { render json: @lesson_vital_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_vital_facts/1
  # DELETE /lesson_vital_facts/1.json
  def destroy
    @lesson_vital_fact.destroy
    respond_to do |format|
      format.html { redirect_to lesson_vital_facts_url, notice: 'Lesson vital fact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_vital_fact
      @lesson_vital_fact = LessonVitalFact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_vital_fact_params
      params.require(:lesson_vital_fact).permit(:decision_date, :decision, :plaintiff, :defendant, :plaintiff_att, :defendant_att, :justices)
    end
end
