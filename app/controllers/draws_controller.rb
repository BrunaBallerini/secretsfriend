class DrawsController < ApplicationController
  before_action :authenticate_user!

  def create
    @draw = Draw.new(
      title: params[:title],
      min_value: params[:min_value],
      max_value: params[:max_value],
      date_draws: params[:date_draws],
      date_present: params[:date_present],
      description: params[:description]
    )
    if @draw.save
      render json: @draw, status: :created
    else
      render json: @draw.errors, status: :unprocessable_entity
    end
  end

end
