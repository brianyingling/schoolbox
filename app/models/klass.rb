# == Schema Information
#
# Table name: klasses
#
#  id         :integer          not null, primary key
#  schoolyear :string(255)
#  period     :integer
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Klass < ActiveRecord::Base
  attr_accessible :schoolyear, :period, :course_id
  belongs_to :course
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :students
  has_and_belongs_to_many :assignments

  ## computes the total average for the entire class
  def total_average
    if self.assignments.present?
      total_points = (self.assignments.map(&:value).reduce(:+)) * self.students.count || 0
      student_points = self.assignments.map(&:grades).flatten.map(&:value).compact.reduce(:+) || 0
      "#{(student_points / total_points.to_f) * 100.0} %"
    else
      "N/A"
    end
  end

  def name_and_period
    "#{self.course.name} - Period #{self.period}"
  end

end
