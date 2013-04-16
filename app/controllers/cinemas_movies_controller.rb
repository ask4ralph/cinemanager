class CinemasMoviesController < ApplicationController
  # GET /cinemas_movies
  # GET /cinemas_movies.json
  def index
    @cinemas_movies = CinemasMovie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @cinemas_movies }
    end
  end

  # GET /cinemas_movies/1
  # GET /cinemas_movies/1.json
  def show
    @cinemas_movie = CinemasMovie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @cinemas_movie }
    end
  end

  # GET /cinemas_movies/new
  # GET /cinemas_movies/new.json
  def new
    @cinemas_movie = CinemasMovie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @cinemas_movie }
    end
  end

  # GET /cinemas_movies/1/edit
  def edit
    @cinemas_movie = CinemasMovie.find(params[:id])
  end

  # POST /cinemas_movies
  # POST /cinemas_movies.json
  def create
    @cinemas_movie = CinemasMovie.new(params[:cinemas_movie])

    respond_to do |format|
      if @cinemas_movie.save
        format.html { redirect_to @cinemas_movie, :notice => 'Cinemas Movie was successfully created.' }
        format.json { render :json => @cinemas_movie, :status => :created, :location => @cinemas_movie }
      else
        format.html { render :action => "new" }
        format.json { render :json => @cinemas_movie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /schedules/1
  # PUT /schedules/1.json
  def update
    @cinemas_movie = CinemasMovie.find(params[:id])

    respond_to do |format|
      if @cinemas_movie.update_attributes(params[:cinemas_movie])
        format.html { redirect_to @cinemas_movie, :notice => 'Cinemas Movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @cinemas_movie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @cinemas_movie = CinemasMovie.find(params[:id])
    @cinemas_movie.destroy

    respond_to do |format|
      format.html { redirect_to cinemas_movies_url }
      format.json { head :no_content }
    end
  end
end
