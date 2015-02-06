class FinalController < ApplicationController

  def index
    @toys = Toy.all
    @users = User.all
    @dogs = Dog.all
    @toyreviews = Toyreview.all
    @toyfeatures = Toyfeature.all
    
  end

  def show
    @toy = Toy.find_by(id: params["id"])
    @toyreview = Toyreview.find_by(toy_id: @toy.id)
    @toyfeature = Toyfeature.find_by(toy_id: @toy.id)
    @dogsfavorite = Dog.find_by(favorite_toy_id1: @toy.id)
  end

  def new

  end

  def create

  end

  def edit

  end
  
end