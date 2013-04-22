class CreateNotesTable < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text          :text
      t.integer       :teacher_id
      t.timestamps
    end
  end
end
