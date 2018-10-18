class LandmarksController < ApplicationController
  # add controller methods
  get '/landmarks' do
    @figures = Figure.all
    erb :"/landmarks/index"
  end
  
  get '/landmarks/new' do
    @figure = Figure.find_by_(params[:slug])
    erb :'/landmarks/new'
  end
  
end
