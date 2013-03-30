class CreateAssignmentsTable < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string            :name
      t.text              :description
      t.date              :duedate
      t.integer           :value
      t.timestamps
    end
  end
end
