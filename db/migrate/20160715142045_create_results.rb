class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :election_id
      t.integer :candidate_id
      t.integer :bureau_de_vote_id

      t.timestamps null: false
    end
    add_index :results, :election_id
    add_index :results, :candidate_id
    add_index :results, :bureau_de_vote_id
  end
end
