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

class Course < ActiveRecord::Base
  attr_accessible :name, :description, :teacher_id, :calendar_id
  belongs_to :teacher
  has_many :klasses
  has_many :units
  has_one :calendar
end
