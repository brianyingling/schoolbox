# == Schema Information
#
# Table name: units
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  course_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :unit, class: Unit do
    title         'Westward Expansion'
    description   'This unit covers the growth of the United States from its initial 13 colonies and the Northwest Territory to the Pacific Coast, including the Mexican War and the California Gold Rush.'
  end
end
