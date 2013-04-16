class CinemasMovie < ActiveRecord::Base
  attr_accessible :active, :cinema_id, :movie_id, :mon, :tue, :wed, :thu, :fri, :sat, :sun
  validates_uniqueness_of :movie_id, :scope => :cinema_id, :message => ' (%{value}) cinemas movie has already been created.'
  validates_presence_of :movie_id, :cinema_id

   def cinema_name
	  begin
	    Cinema.find(cinema_id).name.to_s
	  rescue ActiveRecord::RecordNotFound
	    'Cinema has been manually deleted'
	  end
	end

	def movie_name
	  begin
	    Movie.find(movie_id).title.to_s
	  rescue ActiveRecord::RecordNotFound
	    'Movie has been manually deleted'
	  end
	end
end
