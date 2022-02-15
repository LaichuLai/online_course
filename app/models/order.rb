class Order < ApplicationRecord
  belongs_to :user
  belongs_to :course

  def course_expired
    Time.now <= self.created_at.localtime + self.course.duration.day
  end
end
