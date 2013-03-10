class RenameClassesColumnToKlasses < ActiveRecord::Migration
  rename_table :classes, :klasses
end
