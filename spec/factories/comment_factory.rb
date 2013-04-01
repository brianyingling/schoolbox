# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  text       :text
#  student_id :integer
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  postdate   :string(255)
#

FactoryGirl.define do
  factory :comment, class: Comment do
    text        'I think this post is amazing.'
    postdate    '2013-01-01'
  end
end
