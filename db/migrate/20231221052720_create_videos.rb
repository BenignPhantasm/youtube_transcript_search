class CreateVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :videos do |t|
      t.string :channel
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
