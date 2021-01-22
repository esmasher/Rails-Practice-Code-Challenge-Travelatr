class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def helper
        Post.all.select {|p| p.destination == self}
    end
    def bloggers
        helper.map {|b| b.blogger}.uniq
    end
    def age
        bloggers.map {|a| a.age}
    end

    def avg_age
        age.sum/age.count
    end

    def most_recent
       most =  helper.last(5)
       most.map {|t| t.title}
    end

    # def most_likes
    #     helper.each {|l| l.likes.max_by}
    # end
end
