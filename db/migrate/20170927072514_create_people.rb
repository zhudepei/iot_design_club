class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :avatar
      t.string :gender
      t.string :github
      t.string :blog
      t.string :interest
      t.integer :period

      t.timestamps
    end
  end
end
