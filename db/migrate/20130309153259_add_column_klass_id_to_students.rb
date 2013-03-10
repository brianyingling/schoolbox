class AddColumnKlassIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :klass_id, :integer
  end
end
