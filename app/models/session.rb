class Session < ApplicationRecord
  belongs_to :patient
  has_many :notes
end
