class PointsController < ApplicationController
  before_action :authorize_request
  before_action :find_point, only: :last_point

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

  def last_point
    response = if @point.nil?
                 {message: Message.no_point, data: @point}
               else
                 {message: Message.have_point, data: @point}
               end
    json_response response, :ok
  end

  private

  def point_params
    params.permit(:p_a, :p_c, :p_o, :p_n, :p_e)
  end

  def find_point
    @point = current_user.point
  end

end
