class Author < ActiveRecord::Base
    validates :name, :surname, presence: true

    has_many :posts

   # has_many :author_posts
    #has_many :posts, through: :author_posts
    #uzywamy tablic posredniczacych - rails jest na tyle inteligentny, ze zauwazy ze mamy tablice posredniczace

    scope :old, -> { where('age > 30')}

    before_create :default_age



    def fullname

    	"#{name} #{surname}"

    end 

    private

    def default_age
    	self.age = 25 unless age
    end


end