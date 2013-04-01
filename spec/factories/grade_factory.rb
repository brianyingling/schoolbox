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

FactoryGirl.define do
  factory :grade, class: Grade do
    value         100
  end
end
