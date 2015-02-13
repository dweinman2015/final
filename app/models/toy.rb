class Toy < ActiveRecord::Base
  has_many :toyfeatures
  has_many :toypictures
  

end
