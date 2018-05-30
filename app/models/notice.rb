class Notice < ApplicationRecord

    has_many :comments, as: :commentable
    belongs_to :user
    delegate :neighborhood, to: :user

    validates :title,:content, presence: true
    validates :title, length: { maximum: 100 }

end
