class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true
      t.references :project, index: true
      t.string :image_url
      t.string :music_url
      t.string :video_url
      t.text :message
      t.string :title

      t.timestamps
    end
  end
end
