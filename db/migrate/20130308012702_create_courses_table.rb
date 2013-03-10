class CreateCoursesTable < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string      :name
      t.integer     :teacher_id
      t.integer     :calendar_id
      t.text        :description
      t.timestamps
    end
  end
end
