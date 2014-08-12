class AddUserRefToTuples < ActiveRecord::Migration
  def change
    add_reference :tuples, :user, index: true
  end
end
