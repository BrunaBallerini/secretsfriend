require 'rails_helper'

RSpec.describe 'User adding participants:', type: :request do
    describe 'Criador do sorteio adicionando participantes' do
      it 'com sucesso' do
        user = User.create(email: "email@email.com", password: "123123", password_confirmation: "123123")
        sign_in user

        # draw = Draw.find_or_create_by(title: "Nome do Sorteio")
        draw = Draw.create(title: "Sorteio da firma",
        min_value: "50,00",
        max_value: "50,00",
        date_draws: "10/12/2024",
        date_present: "25/12/2024",
        description: "Sorteio da firma"
        )

        post '/all_secrets_friends', params: {
          "name": "Ana Fernandes",
          "email": "ana@email.com",
          "draw_create": true,
          "draw_id":draw.id,
        }

        p response.body
        expect(response).to have_http_status(:created)
      end
    end
end
