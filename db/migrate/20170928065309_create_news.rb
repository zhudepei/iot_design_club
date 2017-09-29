class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :title
      t.string :brief
      t.text :content

      t.timestamps
    end
  end
end
