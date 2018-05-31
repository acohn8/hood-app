class Notice < ApplicationRecord

    has_many :comments, as: :commentable
    belongs_to :user
    delegate :neighborhood, to: :user

    validates :title,:content, presence: true
    validates :title, length: { maximum: 100 }

    def self.search(query)
        if query.empty? || query.nil?
            Notice.all
        else
            self.where("title LIKE ? or content LIKE ?", "%#{query}%", "%#{query}%")
        end
    end
end
