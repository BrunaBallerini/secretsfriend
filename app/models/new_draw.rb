class NewDraw < ApplicationRecord
  validates :title, presence: true
  validates :min_value, presence: true
  validates :max_value, presence: true
  # validates :date_draw, presence: true
  # validates :date_present, presence: true
  validates :description, presence: true
end
