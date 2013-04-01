class AddGradeIdToAssignmentsTable < ActiveRecord::Migration
  def change
    add_column :assignments, :grade_id, :integer
  end
end
