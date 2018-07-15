class Post < ActiveRecord::Base
    validates :title, :content, presence: true
    validates :title, uniqueness: true
    validates :title, length: { maximum: 80 }
    validates :content, length: { in: 10..5000 }

    scope :old, -> { where("created_at < ?", 40.minutes.ago) }

    has_many :comments
    belongs_to :author

    #has_many :author_posts
    #has_many :authors, through: :author_posts
 

    # before_create :annotate_author

    # def annotate_author
    #     self.author = "#{self.author} from Binar::Apps"
    # end
end