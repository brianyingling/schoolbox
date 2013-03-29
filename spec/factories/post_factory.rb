FactoryGirl.define do
  factory :post, class: Post do
    title         'Discussion Question: should freedom of speech be limited?'
    message       'Some Americans believe that freedom of speech should be limited. What do you think? Do you agree or disagree? Why?'
    postdate      '2013-01-01'
  end
end