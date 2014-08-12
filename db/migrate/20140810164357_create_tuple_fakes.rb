class CreateTupleFakes < ActiveRecord::Migration
  def change
    create_table :tuple_fakes do |t|
      t.integer :channel_id
      t.integer :trigger_id
      t.integer :action_id
      t.string :triggerValue
      t.string :triggerCondition
      t.integer :actionFields_id
      t.text :actionData

      t.timestamps
    end
  end
end
