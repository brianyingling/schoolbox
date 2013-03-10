# == Schema Information
#
# Table name: calendars
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Calendar < ActiveRecord::Base
  attr_accessible :name
  belongs_to :course
end
