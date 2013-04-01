# == Schema Information
#
# Table name: assignments
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  duedate     :date
#  value       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  grade_id    :integer
#

FactoryGirl.define do
  factory :assignment, class: Assignment do
    name            "Renaissance Art Essay"
    description     "Students are to compare two different artists: one from the Northern Renaissance, another from the High Renaissance period."
    duedate         "5/1/2013"
    value           100
  end
end
