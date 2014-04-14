class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @question = Question.new
  end

  def show
    @question = Question.find_by_title(params[:title])
  end

  def new
    @question = Question.new
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
