class LandmarksController < ApplicationController
  # add controller methods
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :"/landmarks/index"
  end
  
  get '/landmarks/new' do
    @landmark = Landmark.find_by(params[:name])
    erb :'/landmarks/new'
  end
  
    post '/landmarks' do
    @landmark= Landmark.create(params['landmark'])
    if params[:figure][:name].empty?
      @landmark.figures << Figure.create(params[:figure])
    end
     @figure.save
    redirect to "/landmarks/show"
  end
  
  get '/landmarks/edit' do
    @song = Song.find_by_slug(params[:slug])
    erb :'songs/edit'
  end

  patch '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    @song.update(params[:song])
    @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
    @song.genre_ids = params[:genres]
    @song.save

    flash[:message] = "Successfully updated song."
    redirect("/songs/#{@song.slug}")
  end
  
end
