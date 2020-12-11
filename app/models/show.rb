class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    best_show = Show.maximum(:rating)
    show = Show.where("rating = #{best_show}")[0]
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    worst_show = Show.minimum(:rating)
    show = Show.where("rating = #{worst_show}")[0]
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    show = Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.all.order("name")
  end

end