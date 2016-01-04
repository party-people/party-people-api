class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string     :title,       null: false
      t.text       :description, null: false
      t.integer    :views,       null: false,  default: 0
      t.integer    :favorites,   null: false,  default: 0
      t.integer    :status,      null: false,  default: 0
      t.references :user,       index: true
      t.references :category,  index: true

      t.timestamps null: false
    end
  end
end
