class AddIndexes < ActiveRecord::Migration
  def change
    add_index :bureau_de_votes, :bureau
    add_index :bureau_de_votes, :code
    add_index :bureau_de_votes, :nom
    add_index :bureau_de_votes, :code_arrt
    add_index :bureau_de_votes, :code_dep
    add_index :bureau_de_votes, :code_reg
    add_index :bureau_de_votes, :code_cant
    add_index :bureau_de_votes, :canton
    add_index :bureau_de_votes, :circo
  end
end
