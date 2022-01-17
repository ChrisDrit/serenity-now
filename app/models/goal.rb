class Goal < ApplicationRecord
  belongs_to :plan_of_care
  has_many :outcomes
  has_many :notes, through: :outcomes
end
