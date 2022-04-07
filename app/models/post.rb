class Post < ApplicationRecord
  validates :tax, :title, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
end
