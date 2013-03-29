# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  teacher_id  :integer
#  calendar_id :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :course, class: Course do
    name          'AP US History I'
    description   'This course follows the Advanced Placement curriculum for the first half of American history. The curriculum chronologically starts from Colonial America and ending with post-Civil War Reconstruction. Topics include the Revolutionary Period, the framing of the Constitution, early American years, westward expansion, and the debate over slavery and Southern perspectives.'

  end
end
