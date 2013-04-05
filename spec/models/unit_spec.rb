# == Schema Information
#
# Table name: units
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  course_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Unit do
  let(:unit) {FactoryGirl.create(:unit)}
  describe '.new' do
    it 'creates a new Unit object', :js=>true do
      expect(unit).to be_an_instance_of(Unit)
    end
  end
  describe '.create' do
    it 'creates a Unit record in the db' do
      expect(unit.id).to_not be nil
    end
  end


end
