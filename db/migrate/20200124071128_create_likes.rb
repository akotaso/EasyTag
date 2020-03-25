class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.references :item, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
