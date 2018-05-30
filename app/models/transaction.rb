class Transaction < ApplicationRecord

    has_many :comments, as: :commentable
    belongs_to :user

    validates :price,:item_name,:item_description,:condition, presence: true
    validates :price, numericality: { greater_than: 0 }

end
