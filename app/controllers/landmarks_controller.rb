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
    redirect to "/figures/#{@figure.id}"
  end
  
end
