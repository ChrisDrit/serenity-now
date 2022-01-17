class PlanOfCare < ApplicationRecord
  belongs_to :patient
  has_many :goals
end
