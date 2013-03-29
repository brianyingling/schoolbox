require 'spec_helper'
require 'features/shared/login_helper'
include LoginHelper

describe 'Teachers' do
  describe 'GET /teachers' do
    let(:teacher) {FactoryGirl.create(:teacher)}
    let(:course) {FactoryGirl.create(:course)}
    it 'shows all teachers', :js=>true do
      login(teacher)
      visit teachers_path
      page.should have_text("Teachers")
    end
  end

end