class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :intro
      t.text :content

      t.timestamps
    end
  end
end
