class AllSecretsFriend < ApplicationRecord
  belongs_to :draw

  validates :name, presence: true, length: { maximum: 200 }
  validates :email, presence: true, length: { maximum: 150 }
end
