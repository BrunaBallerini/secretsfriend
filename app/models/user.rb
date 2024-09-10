# frozen_string_literal: true

class User < ApplicationRecord # rubocop:disable Style/Documentation
  include Devise::JWT::RevocationStrategies::JTIMatcher
  has_many :draw_users
  has_many :draws, through: :draw_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: self
  validates :email, presence: true
end
