class Transaction < ApplicationRecord

    has_many :comments, as: :commentable
    belongs_to :user

    validates :price,:item_name,:item_description,:condition, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0 }

    def free?
        true if price == 0
    end
end
