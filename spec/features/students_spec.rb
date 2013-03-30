require 'spec_helper'
require 'features/shared/login_helper'
require 'features/shared/create_helper'
include LoginHelper
include CreateHelper

describe 'Students' do
  let(:student) {FactoryGirl.create(:student)}

  describe 'GET /students/new' do
    it 'displays the new student form' do
      visit root_path
      click_link('Register')
      click_link('New Student')
      page.should have_text('New Student Registration')
      # expect(student).to be_an_instance_of(Student)
    end
  end

  describe 'POST students/' do
    it 'creates a Student record in the db using the New Student Registration form' do
      visit root_path
      click_link('Register')
      click_link('New Student')
      fill_in('Username', :with=>student.username)
      fill_in('First name', :with=>student.first_name)
      fill_in('Last name', :with=>student.last_name)
      fill_in('Email', :with=>student.email)
      fill_in('student_password',:with=>student.password)
      fill_in('student_password_confirmation', :with=>student.password)
      click_button('Create Student')
      expect(student.id).to_not be nil
    end
  end



end