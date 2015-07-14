class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :affiliation
      t.text :platform
      t.integer :user_id
      t.integer :pledge_goal
      t.integer :fundraising_goal

      t.timestamps null: false
    end
  end
end
