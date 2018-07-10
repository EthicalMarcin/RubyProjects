class Post < ActiveRecord::Base
    validates :title, :content, presence: true
    validates :title, uniqueness: true
    validates :title, length: { maximum: 80 }
    validates :content, length: { in: 10..500 }

    scope :old, -> { where("created_at < ?", 40.minutes.ago) }

    has_many :comments

    has_many :author_posts
    has_many :authors, through: :author_posts
    #wyrazenie lambda, czyli wez kawalek kodu i go wykonaj w przypadku... tego po lewej

    # before_create :annotate_author

    # def annotate_author
    #     self.author = "#{self.author} from Binar::Apps"
    # end
end