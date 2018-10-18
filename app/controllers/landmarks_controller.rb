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
    unless params[:landmark][:name].empty?
      @figure.landmarks << Figure.create(params[:figure])
    end
     unless params[:title][:name].empty?
      @figure.titles << Title.create(params[:title])
    end
     @figure.save
    redirect to "/figures/#{@figure.id}"
  end
  
end
