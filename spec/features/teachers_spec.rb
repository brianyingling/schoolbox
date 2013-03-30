require 'spec_helper'
require 'features/shared/login_helper'
require 'features/shared/create_helper'
include LoginHelper
include CreateHelper

describe 'Teachers' do
  describe 'GET /teachers' do
    let(:teacher) {FactoryGirl.create(:teacher)}
    let(:course) {FactoryGirl.create(:course)}
    it 'shows all teachers', :js=>true do
      login(teacher)
      find('#login_email_link').click
      # click_link('View All Teachers')
      # find('#account_settings_link').click
      # visit teachers_path
      # binding.pry
      # page.should have_text("Appellation")
    end
  end

end