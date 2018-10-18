
class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
    @figures = Figure.all
<<<<<<< HEAD
    erb :"/figures/index"
  end
  
  get '/figures/new' do
    erb :'/figures/new'
  end
  
  post '/figures' do
    @figure = Figure.create(params['figure'])
    unless params[:landmark][:name].empty?
      @figure.landmarks << Landmark.create(params[:landmark])
    end
     unless params[:title][:name].empty?
      @figure.titles << Title.create(params[:title])
    end
     @figure.save
    redirect to "/figures/#{@figure.id}"
  end

=======
    erb :"/figures/new"
  end
>>>>>>> e698477c5169dcc9de6cadec2cb6a7b1d25f660b
end
