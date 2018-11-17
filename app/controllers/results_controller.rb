class ResultsController < ApplicationController
  def all
    result = Result.all
    response = { message: Message.result, data: result }
    json_response(response, :ok)
  end
end
