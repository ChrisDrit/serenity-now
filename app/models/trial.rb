class Trial < ApplicationRecord
  belongs_to :note
  has_many :scores
end
