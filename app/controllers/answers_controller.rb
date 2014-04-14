class AnswersController < ApplicationController

  def index
    @answers = Answer.all
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      respond_to do |format|
        format.html { redirect_to question_path(@answer.question_id) }
        format.js
      end
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:answer, :user_id, :question_id, :comment_id)
  end

end
