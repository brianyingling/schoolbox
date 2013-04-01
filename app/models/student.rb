# == Schema Information
#
# Table name: students
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  password_digest :string(255)
#  address         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  gender          :string(255)
#  email           :string(255)
#  klass_id        :integer
#

class Student < ActiveRecord::Base
  has_secure_password
  attr_accessible :username, :first_name, :last_name, :password, :password_confirmation, :address, :email, :gender
  has_and_belongs_to_many :klasses
  has_many :comments
  has_many :grades
  validates :username, :uniqueness => true
  validates :email, :uniqueness => true

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
