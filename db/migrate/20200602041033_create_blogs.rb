class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.text :title
      t.date :date
      t.text :tags
      t.boolean :visible
      t.text :content
      t.text :content_parsed

      t.index :title, unique: true

      t.timestamps
    end
  end
end
