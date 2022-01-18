class Goal < ApplicationRecord
  belongs_to :plan_of_care
  has_many :notes

  validates :title, presence: true

end
