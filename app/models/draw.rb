class Draw < ApplicationRecord
  validates :title, presence: true
  validates :min_value, presence: true
  validates :max_value, presence: true
  validates :date_draws, presence: true
  validates :date_present, presence: true
  validates :description, presence: true
end
