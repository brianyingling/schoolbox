require 'spec_helper'
require 'features/shared/login_helper'
require 'features/shared/create_helper'
include LoginHelper
include CreateHelper

describe 'Klasses' do
  let(:teacher) {FactoryGirl.create(:teacher)}
  let(:course) {FactoryGirl.create(:course)}

  describe 'GET /klasses', :js=>true do
    it 'displays a user\'s klasses' do
      login(teacher)
      find("#klass_menu_link").click
      find("#view_klass_link").click
      # visit klasses_path
      page.should have_text("My Classes")
    end
  end

  describe 'GET /klasses/new', :js=>true do
    it 'shows the new klass form' do
      login(teacher)
      visit root_path
      find("#klass_menu_link").click
      find("#add_klass_link").click
      page.should have_text("New Class")
    end
  end

  describe 'POST /klasses', :js=>true do
    it 'submits a new klass' do
      login(teacher)
      create_course(teacher, course)
      visit new_klass_path
      choose("klass[course_id]")
      select("1", :from=>"klass[period]")
      click_button('Create Class')
    end
  end

  describe 'PUT /klasses/:id/edit' do
    it 'edits an already existing klass', :js=>true do
      login(teacher)
      create_course(teacher, course)
      create_klass(teacher, course)
      visit klasses_path
      find('#edit_klass_btn_0').click
      page.should have_text('New Class')
    end
  end

  describe 'DELETE /klasses' do
    it 'deletes an existing klass', :js=>true do
      login(teacher)
      create_course(teacher, course)
      create_klass(teacher, course)
      visit klasses_path
      find('#edit_klass_btn_0').click
    end
  end




end