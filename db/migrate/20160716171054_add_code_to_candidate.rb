class AddCodeToCandidate < ActiveRecord::Migration
  def change
    add_column :candidates, :code, :string
  end
end
