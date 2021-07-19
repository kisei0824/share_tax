class Post < ApplicationRecord
  validates :tax, :title, presence: true
end
