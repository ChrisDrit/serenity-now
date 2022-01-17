class Patient < ApplicationRecord
  has_one :plan_of_care
  has_many :sessions
end
