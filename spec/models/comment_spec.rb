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

require 'spec_helper'

describe Comment do
  let(:comment) {FactoryGirl.create(:comment)}
  let(:student) {FactoryGirl.create(:student)}
  describe '.new' do
    it 'creates a Comment object' do
      expect(comment).to be_an_instance_of(Comment)
    end
  end

  describe '.create' do
    it 'creates a Comment object in the db' do
      expect(comment.id).to_not be nil
    end
  end

  describe '#text' do
    it 'has text' do
      expect(comment.text).to eq 'I think this post is amazing.'
    end
  end

  describe '#postdate' do
    it 'has a postdate' do
      expect(comment.postdate).to eq '2013-01-01'
    end
  end

  describe '#student' do
    it 'has a Student object' do
      comment.student = student
      comment.save
      expect(comment.student).to eq student
    end
  end

end
