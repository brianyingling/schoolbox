FactoryGirl.define do
  factory :comment, class: Comment do
    text        'I think this post is amazing.'
    postdate    '2013-01-01'
  end
end