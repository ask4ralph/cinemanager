class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :rating
      t.string :director
      t.text :cast
      t.text :details
      t.text :reviews
      t.boolean :active

      t.timestamps
    end
  end
end
