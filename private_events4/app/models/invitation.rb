class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user_id, :event_id, presence: true
  validates_uniqueness_of :user_id, scope: [:event_id], message: "User has already registered for this event"

end
