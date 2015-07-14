class RemoveVotePledgedFromPledges < ActiveRecord::Migration
  def change
  	remove_column :pledges, :vote_pledged
  end
end
