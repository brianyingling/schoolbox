require 'spec_helper'

describe Klass do
  let(:klass1)  {FactoryGirl.create(:klass_period1)}
  let(:klass2)  {FactoryGirl.create(:klass_period2)}
  let(:course)  {FactoryGirl.create(:course)}
  let(:student) {FactoryGirl.create(:student)}
  let(:post)    {FactoryGirl.create(:post)}
  describe '.new' do
    it 'creates a new Klass object' do
      expect(klass1).to be_an_instance_of(Klass)
    end
  end

  describe '.create' do
    it 'creates a Klass object in the db' do
      expect(klass1.id).to_not be nil
    end
  end

  describe '#schoolyear' do
    it 'has a school year' do
      klass1.schoolyear = '2012-2013'
      expect(klass1.schoolyear).to eq '2012-2013'
    end
  end

  describe '#period' do
    it 'has a period' do
      expect(klass1.period).to eq 1
    end
  end

  describe '#course' do
    it 'is assigned to a Course object' do
      klass1.course = course
      klass1.save
      expect(klass1.course).to be_an_instance_of(Course)
    end
  end

  describe '#students' do
    it 'has an array of student objects' do
      klass1.students << student
      klass1.students << student
      expect(klass1.students.first).to be_an_instance_of(Student)
    end
  end

  describe '#posts' do
    it 'has an array of post objects' do
      klass1.posts << post
      klass1.posts << post
      expect(klass1.posts.first).to be_an_instance_of(Post)
    end
  end


end