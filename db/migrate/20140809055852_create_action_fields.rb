class CreateActionFields < ActiveRecord::Migration
  def change
    create_table :action_fields do |t|
      t.string :fieldName
      t.string :fieldType
      t.references :action, index: true

      t.timestamps
    end
  end
end
