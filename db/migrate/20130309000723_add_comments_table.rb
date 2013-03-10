class AddCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text          :text
      t.integer       :student_id
      t.integer       :post_id
      t.timestamps
    end
  end
end
