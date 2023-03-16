class Tool < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: {minimum: 2}

end
