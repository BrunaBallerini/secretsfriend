require "rails_helper"

RSpec.describe "Draw", type: :request do
  describe "usuario cria novo sorteio" do
    it "com sucesso" do
      user = User.create(email: "teste@email.com", password: "123123", password_confirmation: "123123")
      sign_in user
      post "/draws", params: {
        "title": "Sorteio da firma",
        "min_value": "50,00",
        "max_value": "50,00",
        "date_draws": "10/12/2024",
        "date_present": "25/12/2024",
        "description": "Sorteio da firma"
      }
      expect(response).to have_http_status(:created)
    end

    it "com falha" do
      user = User.create(email: "teste@email.com", password: "123123", password_confirmation: "123123")
      sign_in user
      post "/draws", params: {
        "title": nil,
        "min_value": nil,
        "max_value": nil,
        "date_draws": nil,
        "date_present": "25/12/2024",
        "description": "Sorteio da firma"
      }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
