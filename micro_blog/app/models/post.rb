class Post < ActiveRecord::Base

   # validation for title and body
  validates :title, length: { maximum: 50,
    too_long: "%{count} characters is the maximum allowed" }, presence: true

	validates :body, length: { maximum: 249,
    too_long: "%{count} characters is the maximum allowed" }, presence: true

	belongs_to :user
	has_many :post_tags
	has_many :tags, :through => :post_tags
	has_many :comments, as: :commentable
end
