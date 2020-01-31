class CreateMotivations < ActiveRecord::Migration[6.0]
  def change
    create_table :motivations do |t|
      t.string :title
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
