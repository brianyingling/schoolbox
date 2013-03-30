class Assignment < ActiveRecord::Base
  attr_accessible :name, :description, :duedate, :value
  has_and_belongs_to_many :klasses
end