class CreateTuples < ActiveRecord::Migration
  def change
    create_table :tuples do |t|
      t.string :triggerValue
      t.string :triggerCondition
      t.text :actionData
      t.references :channel, index: true
      t.references :trigger, index: true
      t.references :action, index: true
      t.references :actionFields, index: true

      t.timestamps
    end
  end
end
