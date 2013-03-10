class CreateClassesTable < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string        :schoolyear
      t.integer       :period
      t.integer       :course_id
      t.timestamps
    end
  end
end
