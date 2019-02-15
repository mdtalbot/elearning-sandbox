class LessonTextsController < ApplicationController
  before_action :set_lesson_text, only: [:show, :edit, :update, :destroy]
  belongs_to :lesson, index: true

  # GET /lesson_texts
  # GET /lesson_texts.json
  def index
    @lesson_texts = LessonText.all
  end

  # GET /lesson_texts/1
  # GET /lesson_texts/1.json
  def show
  end

  # GET /lesson_texts/new
  def new
    @lesson_text = LessonText.new
  end

  # GET /lesson_texts/1/edit
  def edit
  end

  # POST /lesson_texts
  # POST /lesson_texts.json
  def create
    @lesson_text = LessonText.new(lesson_text_params)

    respond_to do |format|
      if @lesson_text.save
        format.html { redirect_to @lesson_text, notice: 'Lesson text was successfully created.' }
        format.json { render :show, status: :created, location: @lesson_text }
      else
        format.html { render :new }
        format.json { render json: @lesson_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lesson_texts/1
  # PATCH/PUT /lesson_texts/1.json
  def update
    respond_to do |format|
      if @lesson_text.update(lesson_text_params)
        format.html { redirect_to @lesson_text, notice: 'Lesson text was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson_text }
      else
        format.html { render :edit }
        format.json { render json: @lesson_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesson_texts/1
  # DELETE /lesson_texts/1.json
  def destroy
    @lesson_text.destroy
    respond_to do |format|
      format.html { redirect_to lesson_texts_url, notice: 'Lesson text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_text
      @lesson_text = LessonText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_text_params
      params.require(:lesson_text).permit(:adv, :int, :sim)
    end
end
