# == Schema Information
#
# Table name: students
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  password_digest :string(255)
#  address         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  gender          :string(255)
#  email           :string(255)
#  klass_id        :integer
#

FactoryGirl.define do
  factory :student, class: Student do
    username                'bob'
    first_name              'bob'
    last_name               'smith'
    password                'bob'
    password_confirmation   'bob'
    address                 '10 E. 21st St, New York, NY'
    gender                  'male'
    email                   'bob@gmail.com'
  end
end
