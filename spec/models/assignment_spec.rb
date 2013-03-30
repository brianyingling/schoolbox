require 'spec_helper'

describe Assignment do
  let(:assignment) {FactoryGirl.create(:assignment)}
  let(:klass1) {FactoryGirl.create(:klass_period1)}
  let(:klass2) {FactoryGirl.create(:klass_period2)}
  describe '.new' do
    it 'creates a new Assignment object' do
      assignment = Assignment.new
      expect(assignment).to be_an_instance_of(Assignment)
    end
  end

  describe '.create' do
    it 'creates an Assignment record in the db' do
      assignment = Assignment.create
      expect(assignment.id).to_not be nil
    end
  end

  describe '#name' do
    it 'has a name' do
      assignment.name = 'Midterm Essay'
      assignment.save
      expect(assignment.name).to eq 'Midterm Essay'
    end
  end

  describe '#description' do
    it 'has a description' do
      assignment.description = 'This report is about the Renaissance.'
      assignment.save
      expect(assignment.description).to eq 'This report is about the Renaissance.'
    end
  end

  describe '#duedate' do
    it 'has a due date' do
      assignment.duedate = '2013-04-19'
      assignment.save
      expect(assignment.duedate).to eq assignment.duedate
    end
  end

  describe '#value' do
    it 'has a point value' do
      assignment.value = 100
      assignment.save
      expect(assignment.value).to eq 100
    end
  end

  describe '#klasses' do
    it 'has at least one klass' do
      assignment.klasses << klass1
      expect(assignment.klasses.first).to eq klass1
    end
  end



end