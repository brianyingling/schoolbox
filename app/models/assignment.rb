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

class Assignment < ActiveRecord::Base
  attr_accessible :name, :description, :duedate, :value, :klass_ids, :grade_id
  has_and_belongs_to_many :klasses
end
