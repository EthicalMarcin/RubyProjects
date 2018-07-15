class Commentator < ActiveRecord::Base
	 validates :nickname,  presence: true
	validates :nickname, uniqueness: true

	 belongs_to :comment
end