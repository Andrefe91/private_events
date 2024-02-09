class Party < ApplicationRecord
  has_many :invitations
  has_many :creators, through: :invitations, class_name: "User", foreign_key: "user_id"

  validates :place, :date, presence: true
end
