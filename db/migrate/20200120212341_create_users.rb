class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :password_confirmation
      t.integer :age
      t.string :city
      t.string :occupation
      t.text :bio

      t.timestamps
    end
  end
end
