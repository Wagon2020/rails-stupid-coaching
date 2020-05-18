class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = coach_logic
  end

  def coach_logic
    if params[:answer] == 'I am going to work'
      'great'
    elsif params[:answer].include? '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
