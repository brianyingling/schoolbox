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

FactoryGirl.define do
  factory :teacher, class: Teacher do
    username                'byingling'
    email                   'byingling@gmail.com'
    first_name              'Brian'
    last_name               'Yingling'
    password                'byingling'
    password_confirmation   'byingling'
    # prefix                  'Mr.'
  end
end
