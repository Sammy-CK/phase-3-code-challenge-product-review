class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  def leave_review(user, star_rating, comment)
    Review.create(star_rating: star_rating, comment: comment, user_id: user.id, product_id: self.id)
  end

  def print_all_reviews
    self.reviews.each { |review| puts "Review for #{self.name} by #{review.user.name}: #{review.star_rating}. #{review.comment}" }
  end

  def average_rating
    self.reviews.average(:star_rating).to_f
  end
end
