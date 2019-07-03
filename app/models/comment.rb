class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :place

    RATINGS = {
        'Not Recommended': '1_star',
        'Recommended': '2_stars',
        'Highly Recommended': '3_stars'
  }

    def humanized_rating
    RATINGS.invert[self.rating]
  end
end
