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
end
