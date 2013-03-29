require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper

describe 'Courses' do
  describe 'POST /courses' do
    let(:teacher) {FactoryGirl.create(:teacher)}
    let(:course) {FactoryGirl.create(:course)}
    it 'creates a new course', :js=>true do
      login(teacher)
      find('#course_menu_link').click
      find('#add_course_link').click
      fill_in('Name',:with=>course.name)
      fill_in('Description',:with=>course.description)
      choose("course[teacher_id]")
      click_button('Create Course')
      expect(course.id).to_not eq nil
    end
  end

  describe '/courses' do
    let(:teacher) {FactoryGirl.create(:teacher)}
    let(:course) {FactoryGirl.create(:course)}
    it 'allows a teacher to view all of his/her courses', :js=>true do
      login(teacher)
      find('#course_menu_link').click
      find('#view_course_link').click
      page.should have_text("My Courses")
    end
  end

  describe '/course/:id' do
    let(:teacher) {FactoryGirl.create(:teacher)}
    let(:course) {FactoryGirl.create(:course)}
    it 'displays a specific course', :js=>true do
      login(teacher)
      create_course(course)
      visit courses_path
      find('#course_link_0').click
      page.should have_text("Classes Offered")

    end
  end

  describe '/courses/:id/edit' do
    let(:teacher) {FactoryGirl.create(:teacher)}
    let(:course) {FactoryGirl.create(:course)}
    it 'edits a particular course', :js=>true do
      login(teacher)
      create_course(course)
      visit courses_path
      find('#edit_btn_0').click
      course.name = "Health"
      course.save
      find('#course_menu_link').click
      find('#add_course_link').click
      fill_in('Name',:with=>course.name)
      fill_in('Description',:with=>course.description)
      choose("course[teacher_id]")
      click_button('Create Course')
      expect(course.name).to eq 'Health'
    end
  end

  describe 'DELETE /course' do
    let(:teacher) {FactoryGirl.create(:teacher)}
    let(:course) {FactoryGirl.create(:course)}
    it 'deletes a course', :js=>true do
      login(teacher)
      create_course(course)
      visit courses_path
      find("#delete_btn_0").click
      page.should_not have_button('Create Course')
    end
  end



end

def create_course(course)
  find('#course_menu_link').click
  find('#add_course_link').click
  fill_in('Name',:with=>course.name)
  fill_in('Description',:with=>course.description)
  choose("course[teacher_id]")
  click_button('Create Course')
end