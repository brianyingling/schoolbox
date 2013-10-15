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
  has_many :assignments, :through=>:grades
  validates :username, :uniqueness => true
  validates :email, :uniqueness => true


  def name
    "#{self.first_name} #{self.last_name}"
  end

  # calculates's a student's class average
  # Takes a klass's average
  def klass_average(k)
    assignments     = self.assignments.select {|a| a.klasses.include?(k)}
    points_possible = assignments.map(&:value).compact.reduce(:+)
    points_earned   = self.grades.select {|g| assignments.include?(g.assignment)}.map(&:value).compact.reduce(:+)

    if points_possible.nil? || points_earned.nil?
      ' '
    else
      (points_earned.to_f / points_possible.to_f * 100).round(1)
    end
  end

  # returns an array of assignments with a given klass
  def assignments_by_klass(klass)
    self.assignments.select {|a| klass.assignments.include?(a)}
  end


end
