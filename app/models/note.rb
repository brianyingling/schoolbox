class Note < ActiveRecord::Base
  attr_accessible :text
  belongs_to :teacher
end