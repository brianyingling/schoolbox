# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  message    :text
#  postdate   :datetime
#  teacher_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :post, class: Post do
    title         'Discussion Question: should freedom of speech be limited?'
    message       'Some Americans believe that freedom of speech should be limited. What do you think? Do you agree or disagree? Why?'
    postdate      '2013-01-01'
  end
end
