class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.text :description
      t.string :youtube_url
      t.timestamps
    end
  end
end
