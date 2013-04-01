# == Schema Information
#
# Table name: grades
#
#  id            :integer          not null, primary key
#  student_id    :integer
#  assignment_id :integer
#  value         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'spec_helper'

describe Grade do
  let(:assignment) {FactoryGirl.create(:assignment)}
  let(:student)    {FactoryGirl.create(:student)}
  let(:grade)      {FactoryGirl.create(:grade)}
  describe '.new' do
    it 'creates a new Grade object' do
      expect(grade).to be_an_instance_of(Grade)
    end
  end

  describe '.create' do
    it 'creates a Grade record in the db' do
      assignment.grades << grade
      student.assignments << assignment
      expect(grade.id).to_not be nil
    end
  end


end
