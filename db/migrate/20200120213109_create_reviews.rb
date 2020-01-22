class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :reviewee_id
      t.integer :reviewer_id

      t.timestamps
    end
  end
end
