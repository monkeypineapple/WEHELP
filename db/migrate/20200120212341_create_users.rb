class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :age
      t.string :city
      t.string :occupation

      t.timestamps
    end
  end
end
