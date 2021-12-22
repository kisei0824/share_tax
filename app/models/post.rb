class Post < ApplicationRecord
  validates :tax, :title, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
end
