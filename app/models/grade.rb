  # == Schema Information
#
# Table name: grades
#
#  id            :integer          not null, primary key
#  student_id    :integer
#  assignment_id :integer
#  value         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Grade < ActiveRecord::Base
  attr_accessible :value
  belongs_to :assignment
  belongs_to :student
end
