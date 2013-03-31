require 'spec_helper'
require 'features/shared/login_helper'
require 'features/shared/create_helper'
include LoginHelper
include CreateHelper

describe 'Assignments' do
  let(:assignment) {FactoryGirl.create(:assignment)}
  let(:course) {FactoryGirl.create(:course)}
  let(:teacher) {FactoryGirl.create(:teacher)}
  let(:klass1) {FactoryGirl.create(:klass_period1)}
  let(:klass2) {FactoryGirl.create(:klass_period2)}

  describe 'GET /assignments' do
    it 'lists all of the assignments for each class', :js=>true do
      teacher.courses << course
      course.klasses << klass1
      course.klasses << klass2
      klass1.assignments << assignment
      login(teacher)
      find('#assignments_menu_link').click
      click_link('View Assignments')
      page.should have_text('Assignments')
    end
  end

  describe 'GET /assignments/new' do
    it 'displays the new assignment form', :js=>true do
      login(teacher)
      find('#assignments_menu_link').click
      click_link('Add Assignment')
      page.should have_text('New Assignment')
    end
  end

  describe 'POST /assignments' do
    it 'creates a new Assignment in the db', :js=>true do
      login(teacher)
      teacher.courses << course
      course.klasses << klass1
      course.klasses << klass2
      create_assignment(assignment, teacher)
    end
  end

  describe 'GET /assignments/:id' do
    it 'shows the characteristics of a particular assignment and the grades given for each student', :js=>true do
      teacher.courses << course
      course.klasses << klass1
      course.klasses << klass2
      klass1.assignments << assignment
      login(teacher)
      visit assignment_path(assignment.id)
    end
  end

  describe 'PUT /assignments/:id' do
    it 'edits an already existing assignment', :js=>true do
      teacher.courses << course
      course.klasses << klass1
      course.klasses << klass2
      klass1.assignments << assignment
      login(teacher)
      visit assignments_path
    end
  end

  describe 'DELETE /assignments' do
    it 'deletes an assignment', :js=>true do
      teacher.courses << course
      course.klasses << klass1
      course.klasses << klass2
      klass1.assignments << assignment
      login(teacher)
      visit assignments_path
      find("#delete_assignment_link_#{assignment.id}").click
      page.driver.browser.switch_to.alert.accept

    end
  end



end