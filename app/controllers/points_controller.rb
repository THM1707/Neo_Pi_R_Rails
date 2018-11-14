class PointsController < ApplicationController
  before_action :authorize_request
  before_action :find_point, only: :show

  def create
    if current_user.point.nil?
      current_user.create_point(point_params)
      response = {message: Message.point_create, data: current_user.point}
    else
      current_user.point.update(point_params)
      response = {message: Message.point_update, data: current_user.point}
    end
    json_response response, :ok
  end

  def show
    json_response @point
  end

  private

  def point_params
    params.permit(:p_a, :p_c, :p_o, :p_n, :p_e)
  end

  def find_point
    @point = current_user.point
  end

end
