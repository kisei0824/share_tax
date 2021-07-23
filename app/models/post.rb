class Post < ApplicationRecord
  validates :tax, :title, presence: true

  belongs_to :user
end
