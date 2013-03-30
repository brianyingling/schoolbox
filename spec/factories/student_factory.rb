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