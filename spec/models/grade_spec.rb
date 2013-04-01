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
      student.grades << grade
      expect(grade.id).to_not be nil
    end
  end

  describe '#value' do
    it 'has a value that\'s an integer' do
      grade.value = 90
      grade.save
      expect(grade.value).to eq 90
    end
  end

  describe '#student' do
    it 'belongs to a Student object' do
      student.grades << grade
      expect(grade.student).to eq student
    end
  end

  describe '#assignment' do
    it 'belongs to an Assignment object' do
      assignment.grades << grade
      expect(grade.assignment).to eq assignment
    end
  end
end
