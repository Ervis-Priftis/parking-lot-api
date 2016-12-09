class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.float :lat
      t.float :lng
      t.string :image
      t.float :width
      t.float :length
      t.text :details
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
