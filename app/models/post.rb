# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  message    :text
#  postdate   :datetime
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  attr_accessible :title, :message, :postdate, :teacher_id, :klass_ids
  has_many :comments
  belongs_to :teacher
  has_and_belongs_to_many :klasses
end
