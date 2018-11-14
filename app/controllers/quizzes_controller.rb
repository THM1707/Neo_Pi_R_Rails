class QuizzesController < ApplicationController
  before_action :authorize_request

  def all
    quizzes = Quiz.all
    response = { message: Message.quizzes, data: quizzes }
    json_response(response, :ok)
  end
end
