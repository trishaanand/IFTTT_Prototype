class AddDataToChannel < ActiveRecord::Migration
  def change
  	add_column :channels, :data, :string
  end
end
