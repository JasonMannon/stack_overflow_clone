class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    @user = User.find(@question.user_id)
    @answer = Answer.new
    @answers = Answer.all
  end

  def new
    @question = Question.new
    @answer = Answer.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_url, notice:"Question added."
    else
      render "new"
    end
  end

  private
  def question_params
    params.require(:question).permit(:question, :user_id, :answer_id)
  end
end
