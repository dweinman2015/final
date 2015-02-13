class FinalController < ApplicationController

  def index
    @toys = Toy.all
    @users = User.all
    @dogs = Dog.all
    @toyreviews = Toyreview.all
    @toyfeatures = Toyfeature.all
    
  end

 
  
end