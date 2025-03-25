# frozen_string_literal: true

class DrawsController < ApplicationController # rubocop:disable Style/Documentation
  def index # rubocop:disable Metrics/AbcSize,Metrics/MethodLength
    draws_user = Draw.where(user_id: params[:user_id])
    formatted_draws = draws_user.map do |draw|
      {
        id: draw.id,
        title: draw.title.capitalize,
        min_value: format('%.2f', draw.min_value).gsub('.', ','),
        max_value: format('%.2f', draw.max_value).gsub('.', ','),
        date_draws: draw.date_draws.strftime('%d/%m/%Y'),
        date_present: draw.date_draws.strftime('%d/%m/%Y'),
        location: draw.location.capitalize
      }
    end
    render json: formatted_draws
  end

  def create # rubocop:disable Metrics/AbcSize,Metrics/MethodLength
    draw = Draw.new(
      title: params[:title],
      min_value: params[:min_value],
      max_value: params[:max_value],
      date_draws: params[:date_draws],
      date_present: params[:date_present],
      description: params[:description],
      user_id: params[:user_id],
      location: params[:location],
      other_information: params[:other_information]
    )
    return render json: draw, status: :created if draw.save

    render json: draw.errors, status: :bad_request
  end

  def show
    draw = Draw.where(id: params[:id]).first
    Rails.logger.info("draw: #{draw}")
    participants = draw.participants
    render json: {
      draw:,
      participants:
    }, status: :ok
  end

  def email
    draw = Draw.find_by(id: params[:id])
    return render json: { error: 'Draw not found' }, status: :not_found if draw.nil?

    secret_friend_matches = MatchFriend.where(draw_id: draw.id)
    secret_friend_matches.each do |match|
      p1 = match.participant1.email
      p2 = match.participant2.email
      UserMailer.send_secret_friend(p1, p2, draw).deliver_now
    end

    render json: { message: 'E-mails enviados com sucesso' }, status: :ok
  end

  def assign_friends
    draw = Draw.where(id: params[:id]).first
    Rails.logger.info("draw: #{draw}")

    return render json: { message: 'O sorteio já realizado.', completed: true }, status: :ok if draw.completed

    secret_friend = draw.assign_secret_friends
    draw.update(completed: true)

    render json: { secret_friend:, completed: draw.completed }, status: :created
  end
end
