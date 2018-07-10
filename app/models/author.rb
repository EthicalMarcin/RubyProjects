class Author < ActiveRecord::Base
    validates :name, :surname, presence: true


    has_many :author_posts
    has_many :posts, through: :author_posts
    #uzywamy tablic posredniczacych - rails jest na tyle inteligentny, ze zauwazy ze mamy tablice posredniczace

end