class CreateTriggers < ActiveRecord::Migration
  def change
    create_table :triggers do |t|
      t.string :name
      t.references :channel, index: true

      t.timestamps
    end
  end
end
