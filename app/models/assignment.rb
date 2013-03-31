class Assignment < ActiveRecord::Base
  attr_accessible :name, :description, :duedate, :value, :klass_ids
  has_and_belongs_to_many :klasses
end