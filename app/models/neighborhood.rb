class Neighborhood < ApplicationRecord

    has_many :users
    has_many :notices, through: :users
    has_many :transactions, through: :users
    has_many :comments, through: :users

end
