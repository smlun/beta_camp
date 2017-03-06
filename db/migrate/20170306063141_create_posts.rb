class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :link
      t.text :description
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
