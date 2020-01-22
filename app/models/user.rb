class User < ApplicationRecord
    has_many :reviewers, through: :reviewer_reviews, source: :reviewer
    has_many :reviewer_reviews, foreign_key: :reviewee_id, class_name: "Review"
    has_many :reviewees, through: :reviewee_reviews, source: :reviewee
    has_many :reviewee_reviews, foreign_key: :reviewer_id, class_name: "Review"

    validates :username, presence: true, uniqueness: true
    validates :password_confirmation, presence: true
    validates :password, presence: true
    has_secure_password
end
