class SplitPledgesAndContributions < ActiveRecord::Migration
  def change
  	remove_column :pledges, :amount
  	remove_column :pledges, :user_id
  	remove_column :pledges, :candidate_id
  	add_reference :pledges, :user, index: true, foreign_key: true
  	add_reference :pledges, :candidate, index: true, foreign_key: true

  	create_table :contributions do |t|
  		t.references :candidate, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :amount, default: 0

      t.timestamps null: false
  	end
  end
end
