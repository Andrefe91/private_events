class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :events

  has_many :invitations #It doesnt require a foreign_key option as the Invitation model already has a User_id column
  has_many :attended_events, through: :invitations, source: :event, dependent: :destroy

end
