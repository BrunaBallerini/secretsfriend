# frozen_string_literal: true

class ParticipantsController < ApplicationController # rubocop:disable Style/Documentation
  def create # rubocop:disable Metrics/MethodLength
    participants = params[:participants].map do |email|
      Participant.new(
        name: '',
        email:,
        draw_id: params[:draw_id]
      )
    end

    if participants.all?(&:save)
      render json: participants, status: :created
    else
      render json: { errors: participants.map(&:errors) }, status: :unprocessable_entity
    end
  end
end
