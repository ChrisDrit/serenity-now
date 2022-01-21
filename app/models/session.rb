class Session < ApplicationRecord
  belongs_to :patient
  has_many :notes

  validates :title, presence: true
end
