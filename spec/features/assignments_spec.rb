require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper

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

end