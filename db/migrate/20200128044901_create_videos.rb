class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.text :description
      t.string :author
      t.string "video_url"
      t.timestamps
    end
  end
end
