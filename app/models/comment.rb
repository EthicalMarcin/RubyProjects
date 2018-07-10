class Comment < ActiveRecord::Base
	 validates :post_id, presence: true
	 validates :content, length: { in: 1..50 }

	 has_many :comment_commentators
	 has_many :commentators, through: :comment_commentators
	 
end