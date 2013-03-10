class CreateMessagesTable < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string        :title
      t.text          :message
      t.date          :postdate
      t.integer       :student_id
      t.integer       :post_id
      t.timestamps
    end
  end
end
