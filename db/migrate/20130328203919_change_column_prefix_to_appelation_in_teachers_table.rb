class ChangeColumnPrefixToAppelationInTeachersTable < ActiveRecord::Migration
 def change
  rename_column :teachers, :prefix, :appellation
 end
end
