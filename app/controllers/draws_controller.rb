# frozen_string_literal: true

class DrawsController < ApplicationController # rubocop:disable Style/Documentation
  def create # rubocop:disable Metrics/AbcSize
    draw = Draw.new(
      title: params[:title],
      min_value: params[:min_value],
      max_value: params[:max_value],
      date_draws: params[:date_draws],
      date_present: params[:date_present],
      description: params[:description],
      user_id: params[:user_id]
    )
    return render json: draw, status: :created if draw.save

    render json: draw.errors, status: :bad_request
  end

  def show
    draw = Draw.where(id: params[:id]).first
    secret_friend = draw.assign_secret_friends
    render json: secret_friend, status: :ok
  end
end
