class Show < ActiveRecord::Base
  
  def highest_rating
    Show.maximum(:rating)
  end
  
  def most_popular_show
    Show.highest_rating.take
  end
  
  def lowest_rating
    Show.minimum(:rating)
  end
  
  
end