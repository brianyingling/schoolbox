require 'spec_helper'
require 'features/shared/login_helper'
require 'features/shared/create_helper'
include LoginHelper
include CreateHelper

describe 'Students' do
  let(:student) {FactoryGirl.create(:student)}
  describe 'GET /students/new' do
    it 'creates a new student' do
      expect(student).to be_an_instance_of(Student)
    end
  end

  describe 'POST students/' do
    it 'creates a Student record in the db' do
      expect(student.id).to_not be nil
    end
  end



end