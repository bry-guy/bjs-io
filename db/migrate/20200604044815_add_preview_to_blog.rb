class AddPreviewToBlog < ActiveRecord::Migration[6.0]
  def change
    change_table :blogs do |t|
      t.text :preview
    end
  end
end
