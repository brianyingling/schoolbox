class AddColumnPostdateToMessagesTable < ActiveRecord::Migration
  def change
    add_column :comments, :postdate, :string
  end
end
