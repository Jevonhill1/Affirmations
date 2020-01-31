class CreateAudios < ActiveRecord::Migration[6.0]
  def change
    create_table :audios do |t|
      t.string :name
      t.text :description
      t.string :author

      t.timestamps
    end
  end
end
