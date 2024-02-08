class Party < ApplicationRecord
  has_and_belongs_to_many :users
  # has_and_belongs_to_many :creator, class_name: 'User', foreign_key: 'user_id'
  validates :place, :date, presence: true
end
