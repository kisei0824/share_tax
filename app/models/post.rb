class Post < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  scope :sorted, -> { order(created_at: :desc) }
  def self.create_all_ranks #Postクラスからデータを取ってくる処理
    Post.find(Like.group(:post_id).order('count(post_id) desc').limit(3).pluck(:post_id))
  end
end
