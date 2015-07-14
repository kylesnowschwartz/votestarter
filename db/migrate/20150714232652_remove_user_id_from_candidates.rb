class RemoveUserIdFromCandidates < ActiveRecord::Migration
  def change
  	remove_column :candidates, :user_id
  	add_reference :candidates, :nominator, index: true
  end
end
