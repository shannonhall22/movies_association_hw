class DirectorsController < ApplicationController
  def show
    @director = Director.find(params[:id])
  end

  def index
    @directors = Director.all
  end

  def new

  end

  def create
    @director = Director.new
    @director.name = params[:name]
    @director.image_url = params[:image_url]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.save

    redirect_to director_url(@director.id)
  end

  def destroy
    @director = Director.find(params[:id])
    @director.destroy

    redirect_to directors_url
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])
    @director.name = params[:name]
    @director.image_url = params[:image_url]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.save

    redirect_to director_url(@director.id)
  end
end
