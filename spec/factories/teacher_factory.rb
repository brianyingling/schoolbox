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
#  appellation     :string(255)
#

FactoryGirl.define do
  factory :teacher, class: Teacher do
    username                'mjones'
    email                   'mjones@gmail.com'
    first_name              'Michael'
    last_name               'Jones'
    password                'mjones'
    password_confirmation   'mjones'
    appellation             'Mr.'
  end
end
