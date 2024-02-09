class Party < ApplicationRecord
  has_and_belongs_to_many :users

  validates :place, :date, presence: true
end
