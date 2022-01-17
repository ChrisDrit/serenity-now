class Patient < ApplicationRecord
  has_one :plan_of_care
  has_many :sessions

  validates :name, presence: true

  after_create :create_plan_of_care

  private

  def create_plan_of_care
    create_plan_of_care!(description: "Plan of Care for #{name}")
  end
end
