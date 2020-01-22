class Review < ApplicationRecord
    belongs_to :reviewer, foreign_key: "reviewer_id", class_name: "User"
    belongs_to :reviewee, foreign_key: "reviewee_id", class_name: "User"
end
