# == Schema Information
#
# Table name: teachers
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  prefix          :string(255)
#

require 'spec_helper'

describe Teacher do
  let(:teacher ) {FactoryGirl.create(:teacher)}
  describe '.new' do
    it 'creates a Teacher object' do
      teacher = Teacher.new
      expect(teacher).to be_an_instance_of(Teacher)
    end
  end
  describe '.create' do
    it 'creates a Teacher entry in the db' do
      teacher = Teacher.create(:username=>'byingling',:email=>'byingling@gmail.com',:first_name=>'Brian',:last_name=>'Yingling', :password=>'byingling',:password_confirmation=>'byingling')
      expect(teacher.id).to_not eq nil
    end
  end
end
