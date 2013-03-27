FactoryGirl.define do
  factory :klass_period1, class: Klass do
    schoolyear          '2012-2013'
    period              1
  end
  factory :klass_period2, class: Klass do
    schoolyear          '2012-2013'
    period              2
  end
end