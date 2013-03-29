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

FactoryGirl.define do
  factory :klass_period1, class: Klass do
    schoolyear          '2012-2013'
    period              1
  end
  factory :klass_period2, class: Klass do
    schoolyear          '2012-2013'
    period              2
  end
end
