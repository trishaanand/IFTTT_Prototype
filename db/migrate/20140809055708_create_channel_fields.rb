class CreateChannelFields < ActiveRecord::Migration
  def change
    create_table :channel_fields do |t|
      t.string :fieldName
      t.string :fieldType
      t.references :channel, index: true

      t.timestamps
    end
  end
end
