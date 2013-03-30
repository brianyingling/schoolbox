require 'spec_helper'
require 'features/shared/login_helper'
require 'features/shared/create_helper'
include LoginHelper
include CreateHelper

describe 'Students' do
  let(:student) {FactoryGirl.create(:student)}

  describe 'GET /students/new' do
    it 'displays the new student form', :js=>true do
      visit root_path
      click_link('Register')
      click_link('New Student')
      page.should have_text('New Student Registration')
    end
  end

  describe 'POST students/' do
    it 'creates a Student record in the db using the New Student Registration form', :js=>true do
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

  describe 'PUT /students/:id/edit' do
    it 'edits a student\'s account settings', :js=>true do
      create_student(student)
      # page.execute_script("$('#login_email_btn').css('display','inline-block')")
      login(student)
      find('#login_email_btn').click
      click_link('Account Settings')
      page.should have_text('Edit Account Settings')
    end
  end


end