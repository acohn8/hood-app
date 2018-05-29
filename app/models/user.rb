class User < ApplicationRecord

    has_many :transactions
    has_many :notices
    has_many :comments
    belongs_to :neighborhood

end
