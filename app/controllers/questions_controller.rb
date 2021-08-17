class QuestionsController < ApplicationController
    def ask
    end

    def answer
        @question = params[:answer]

        @answer = if @question == "I am going to work"
                    "Greats!"
                  elsif @question.end_with?("?")
                    "Silly question, get dressed and go to work!"
                  else 
                    "I don't care, get dressed and go to work!"
                  end
        end 
    end
