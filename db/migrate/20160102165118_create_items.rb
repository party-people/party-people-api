class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string     :type,     null: :false
      t.integer    :position, null: :false, default: 1
      t.string     :title
      t.text       :description
      t.text       :image_url
      t.text       :thumbnail_url
      t.string     :source
      t.text       :source_url
      t.string     :snippet
      t.references :articles, index: true

      t.timestamps null: false
    end
    add_index :items, :type
  end
end
