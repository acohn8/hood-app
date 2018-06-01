class Transaction < ApplicationRecord

    has_many :comments, as: :commentable
    belongs_to :user
    delegate :neighborhood, to: :user

    validates :price,:item_name,:item_description,:condition, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0 }

    def free?
        true if price == 0
    end

    def self.search(query)
        if query.empty? || query.nil?
            Trasaction.all
        else
            Transaction.all.where("item_name LIKE ? or item_description LIKE ?", "%#{query}%", "%#{query}%")
        end
    end

    def self.most_expensive
        self.order(price: :desc).first(3)
    end

end
