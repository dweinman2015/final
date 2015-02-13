class ToysController < ApplicationController

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

 


  def edit
    @toy = Toy.find_by(id:params["id"])
  end

  def update
    toy_params = params.require(:toy).permit(:name, :short_description, :long_description, :link_to_buy, :brand, :good_for)
    @toy = Toy.find_by(id: params["id"])
    @toy.update(toy_params)
    redirect_to toy_path
  end

  def new
    @toy = Toy.new
  end

  def create
    toy_params = params.require(:toy).permit(:name, :short_description, :long_description, :link_to_buy, :brand, :good_for)
    Toy.create(toy_params)
    #render :text => toy_params
    redirect_to toy_path
  end

  def destroy
    
    @toy = Toy.find_by(id: params["id"])
    @toy.destroy
    redirect_to toy_path

  end

end