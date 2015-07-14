class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.integer :candidate_id
      t.integer :user_id
      t.integer :amount, default: 0
      t.boolean :vote_pledged, default: false

      t.timestamps null: false
    end
  end
end
