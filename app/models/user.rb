class User < ApplicationRecord

    has_secure_password

    has_many :transactions
    has_many :notices
    has_many :comments
    belongs_to :neighborhood

    validates :username,:password, presence: true
    validates :password, length: { minimum: 5 }


end
