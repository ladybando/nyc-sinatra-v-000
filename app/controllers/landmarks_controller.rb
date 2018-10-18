class LandmarksController < ApplicationController
  # add controller methods
  get '/landmarks' do
    @figures = Figure.all
    erb :"/landmarks/index"
  end
  
  get '/landmarks/new' do
    @figure = Figure.find_by(params[:name])
    erb :'/landmarks/new'
  end
  
end
