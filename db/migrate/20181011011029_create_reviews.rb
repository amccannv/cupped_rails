class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.float :rating
      t.references :user, foreign_key: true, index: true
      t.references :coffee, foreign_key: true, index: true

      t.timestamps
    end
  end
end
