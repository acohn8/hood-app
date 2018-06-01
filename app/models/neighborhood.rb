class Neighborhood < ApplicationRecord

    has_many :users
    has_many :notices, through: :users
    has_many :transactions, through: :users
    has_many :comments, through: :users

    @@total_hoods = 46

    def self.active_count
        self.all.count
    end

    def self.inactive_count
        @@total_hoods - self.all.count
    end

end
