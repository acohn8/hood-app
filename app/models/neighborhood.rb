class Neighborhood < ApplicationRecord

    has_many :users
    has_many :notices
    has_many :transactions
    has_many :comments, through: :users

end
