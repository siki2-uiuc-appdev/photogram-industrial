class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :own_photos, class_name: "Photo", foreign_key: "owner_id"

  has_many :liked_photos, class_name: "Like", foreign_key: "fan_id"

  has_many :comments, foreign_key: "author_id"

  has_many :sent_follow_requests, class_name: "FollowRequest", foreign_key: "sender_id"

  has_many :received_follow_requests, class_name: "FollowRequest", foreign_key: "recipient_id"
end
