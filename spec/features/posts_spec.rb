require 'spec_helper'
require 'features/shared/login_helper'
require 'features/shared/create_helper'
include LoginHelper
include CreateHelper

describe 'Posts' do
  let(:teacher) {FactoryGirl.create(:teacher)}
  let(:course)  {FactoryGirl.create(:course)}
  let(:klass)   {FactoryGirl.create(:klass_period1)}
  let(:post)    {FactoryGirl.create(:post)}

  describe 'GET /posts/new' do
    it 'displays the new posts form', :js=>true do
      login(teacher)
      click_link('Posts')
      find('#new_post_link').click
      page.should have_text('New Post')
    end
  end

  describe 'POST /posts' do
    it 'posts a new Post in the db', :js=>true do
      course.klasses << klass
      teacher.courses << course
      visit root_path
      login(teacher)
      click_link('Posts')
      find('#new_post_link').click
      fill_in('Title', :with=>post.title)
      fill_in('Message',:with=>post.message)
      check('post[klass_ids][]')
      click_button('Create Post')
    end
  end

  describe 'GET /posts' do
    it 'displays all of the teacher\'s posts', :js=>true do
      course.klasses << klass
      teacher.courses << course
      login(teacher)
      click_link('Posts')
      find('#view_post_link').click
      page.should have_text('Posts')
    end
  end

  describe 'PUT /posts/:id/edit' do
    it 'edits an already-created post', :js=>true do
      course.klasses << klass
      teacher.courses << course
      login(teacher)
      create_post(post)
      visit posts_path
      click_link('Edit')
      page.should have_text('Edit Post')
    end
  end

  describe 'DELETE /posts' do
    it 'deletes a post from the database', :js=>true do
      course.klasses << klass
      teacher.courses << course
      login(teacher)
      create_post(post)
      visit posts_path
      find("#delete_post_link_2").click
      page.driver.browser.switch_to.alert.accept
      # expect(Post.find(2)).to be nil

    end
  end


end