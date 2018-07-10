class Commentator < ActiveRecord::Base
	 validates :nickname,  presence: true
	validates :nickname, uniqueness: true
	 has_many :comment_commentators
	 has_many :comments, through: :comment_commentators
end