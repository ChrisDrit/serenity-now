class Note < ApplicationRecord
  belongs_to :session
  has_many :outcomes
  has_many :goals, through: :outcomes
  has_many :trials

end
