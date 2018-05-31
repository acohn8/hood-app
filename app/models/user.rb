class User < ApplicationRecord

    has_secure_password

    has_many :transactions
    has_many :notices
    has_many :comments
    belongs_to :neighborhood

    validates :username,:password,:email,:tag_line, presence: true
    validates :password, length: { minimum: 5 }
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }


end
