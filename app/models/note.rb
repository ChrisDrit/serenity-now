class Note < ApplicationRecord
  belongs_to :session
  belongs_to :goal
  has_many :trials
end
