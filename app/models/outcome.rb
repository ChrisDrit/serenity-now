class Outcome < ApplicationRecord
  belongs_to :note
  belongs_to :goal
end
