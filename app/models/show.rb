class Show < ActiveRecord::Base
  def highest_rating
    self.maximum(:rating)
  end

  def most_popular_show
    self.where("rating = ?", self.highest_rating).first
  end

  def lowest_rating
    self.order(:rating).first
  end

end
