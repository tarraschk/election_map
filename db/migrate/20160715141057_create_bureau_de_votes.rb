class CreateBureauDeVotes < ActiveRecord::Migration
  def change
    create_table :bureau_de_votes do |t|
      t.string :bureau
      t.string :code
      t.string :nom
      t.string :code_arrt
      t.string :code_dep
      t.string :code_reg
      t.string :code_cant
      t.string :canton
      t.string :circo
      t.text :geometry

      t.timestamps null: false
    end
  end
end
