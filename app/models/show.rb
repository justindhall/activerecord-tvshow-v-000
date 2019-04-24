class Show ActiveRecord < ActiveRecord::Base
  def highest_rating
    self.maximum(:rating)
  end

  def most_popular_show
    self.order(:rating).first
  end

  def lowest_rating
    self.order(:rating).first
  end

end
