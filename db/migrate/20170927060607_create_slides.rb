class CreateSlides < ActiveRecord::Migration[5.1]
  def change
    create_table :slides do |t|
      t.string :name
      t.string :intro
      t.string :picture

      t.timestamps
    end
  end
end
