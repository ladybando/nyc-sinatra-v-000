class LandmarksController < ApplicationController
  # add controller methods
  get '/landmarks' do
    @landmarks = Landmark.all
    @figures = Figure.all
  end
  
  get '/landmarks/new' do
    @landmark = Landmark.find_by(params[:id])
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
  
  post '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    @landmark.name = params['landmark']['name']
    @landmark.year_completed = params['landmark']['year_completed']
    @landmark.save
    redirect to "/landmarks/#{@landmark.id}"
  end
  
   post '/landmarks' do
    Landmark.create(name: params['landmark']['name'], year_completed: params['landmark']['year_completed'])
    redirect '/landmarks'
  end
  
end
