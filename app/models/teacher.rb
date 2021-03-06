# == Schema Information
#
# Table name: teachers
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  appellation     :string(255)
#

class Teacher < ActiveRecord::Base
  attr_accessible :username, :email, :appellation, :first_name, :last_name, :password, :password_confirmation
  has_secure_password
  has_many :posts
  has_many :courses
  has_many :notes
  has_many :klasses, :through=> :courses
  validates :username, :uniqueness =>true
  validates :email, :uniqueness => true

  def name
    "#{self.appellation} #{self.last_name}"
  end

  def is_available?(period)
    periods = self.klasses.where(:period=>period)
    periods.empty?
  end

end
