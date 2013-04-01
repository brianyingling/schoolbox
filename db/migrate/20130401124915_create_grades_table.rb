class CreateGradesTable < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer       :student_id
      t.integer       :assignment_id
      t.integer       :value
      t.timestamps
    end
  end
end
