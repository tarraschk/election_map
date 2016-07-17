class AddInfosToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :party, :string
    add_column :candidates, :political_current, :string
  end
end
