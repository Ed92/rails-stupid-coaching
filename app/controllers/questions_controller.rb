class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:userquestion]
    if @question == "I am going to work!"
      @answer = "Great!"
    elsif @question.split("").last == "?"
      @answer = "silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
