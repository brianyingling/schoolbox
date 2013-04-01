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

require 'spec_helper'

describe Post do
  let(:post)    {FactoryGirl.create(:post)}
  let(:teacher) {FactoryGirl.create(:teacher)}
  let(:klass1)  {FactoryGirl.create(:klass_period1)}
  describe '.new' do
    it 'creates a Post object' do
      expect(post).to be_an_instance_of(Post)
    end
  end

  describe '.create' do
    it 'creates a Post object in the db' do
      expect(post.id).to_not be nil
    end
  end

  describe '#title' do
    it 'has a title' do
      expect(post.title).to eq 'Discussion Question: should freedom of speech be limited?'
    end
  end

  describe '#message' do
    it 'has a message' do
      expect(post.message).to eq 'Some Americans believe that freedom of speech should be limited. What do you think? Do you agree or disagree? Why?'
    end
  end

  describe '#postdate' do
    it 'has a postdate' do
      expect(post.postdate).to eq '2013-01-01'
    end
  end

  describe '#teacher' do
    it 'has a teacher' do
      post.teacher = teacher
      post.save
      expect(post.teacher).to be_an_instance_of(Teacher)
    end
  end

  describe '#klasses' do
    it 'has many klasses' do
      post.klasses << klass1
      expect(post.klasses.first).to eq klass1
    end
  end


end
