class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = calculate_answser
  end

  private

  def calculate_answser
    # If the message is "I am going to work", the coach will answer "Great!
    if @question == 'I am going to work'
      'Great'
    elsif @question.include? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
      # 'This is wrong text'
    end
  end
end
