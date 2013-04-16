class AddDaysToCinemasMovies < ActiveRecord::Migration
 def self.up
    add_column :cinemas_movies, :mon, :string
    add_column :cinemas_movies, :tue, :string
    add_column :cinemas_movies, :wed, :string
    add_column :cinemas_movies, :thu, :string
    add_column :cinemas_movies, :fri, :string
    add_column :cinemas_movies, :sat, :string
    add_column :cinemas_movies, :sun, :string
  end
 
  def self.down
    remove_column :cinemas_movies, :mon
    remove_column :cinemas_movies, :tue
    remove_column :cinemas_movies, :wed
    remove_column :cinemas_movies, :thu
    remove_column :cinemas_movies, :fri
    remove_column :cinemas_movies, :sat
    remove_column :cinemas_movies, :sun
  end
end
