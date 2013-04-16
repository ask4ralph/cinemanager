class CreateCinemasMovies < ActiveRecord::Migration
  def change
    create_table :cinemas_movies do |t|
      t.integer :movie_id
      t.integer :cinema_id
      t.boolean :active

      t.timestamps
    end
  end
end
