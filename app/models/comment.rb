class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :place
    after_create :send_comment_email

    RATINGS = {
        'Not Recommended': '1_star',
        'Recommended': '2_stars',
        'Highly Recommended': '3_stars'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end

  def send_comment_email
    NotificationMailer.comment_added(self).deliver_now 
  end
end
