require 'spec_helper'
require 'features/shared/login_helper'
require 'features/shared/create_helper'
include LoginHelper
include CreateHelper

describe 'Grades' do
  let(:teacher)    {FactoryGirl.create(:teacher)}
  let(:student)    {FactoryGirl.create(:student)}
  let(:assignment) {FactoryGirl.create(:assignment)}
  describe 'GET /grades/new' do
    it 'shows the new grade form for students and an assignment', :js=>true do
      login(teacher)
      #
      # MESS WITH THIS LATER
      #
      # visit assignment_path(assignment.id)
      # page.should have_text("Add Grade")
    end
  end
end