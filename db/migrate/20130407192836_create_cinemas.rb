class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :phone
      t.text :address
      t.boolean :active

      t.timestamps
    end
  end
end
