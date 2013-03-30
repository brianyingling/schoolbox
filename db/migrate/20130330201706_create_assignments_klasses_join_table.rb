class CreateAssignmentsKlassesJoinTable < ActiveRecord::Migration
  def change
    create_table :assignments_klasses do |t|
      t.integer     :assignment_id
      t.integer     :klass_id
    end
  end
end
