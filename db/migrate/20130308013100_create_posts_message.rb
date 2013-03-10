class CreatePostsMessage < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string          :title
      t.text            :message
      t.datetime        :postdate
      t.integer         :teacher_id
      t.timestamps
    end
  end

end
