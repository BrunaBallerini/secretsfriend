# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Draw, type: :model do # rubocop:disable Metrics/BlockLength
  it 'assign secret friends with success' do # rubocop:disable Metrics/BlockLength
    draw = Draw.create(
      title: 'Sorteio da firma',
      min_value: '50,00',
      max_value: '50,00',
      date_draws: '10/06/2024',
      date_present: '15/06/2024',
      description: 'O sorteio'
    )

    user1 = create(:user)
    user2 = create(:user)
    user3 = create(:user)
    user4 = create(:user)

    DrawUser.create!(
      "owner": true,
      "suggestion": ' ',
      "user_id": user1.id,
      "draw_id": draw.id
    )
    DrawUser.create!(
      "owner": false,
      "suggestion": ' ',
      "user_id": user2.id,
      "draw_id": draw.id
    )
    DrawUser.create!(
      "owner": false,
      "suggestion": ' ',
      "user_id": user3.id,
      "draw_id": draw.id
    )
    DrawUser.create!(
      "owner": false,
      "suggestion": ' ',
      "user_id": user4.id,
      "draw_id": draw.id
    )

    response = draw.assign_secret_friends
    p response
    expect(response).to eq(' ')
  end
end
