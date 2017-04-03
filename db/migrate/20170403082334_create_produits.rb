class CreateProduits < ActiveRecord::Migration[5.0]
  def change
    create_table :produits do |t|
      t.string :nom
      t.integer :code
      t.string :description
      t.string :tarif
      t.integer :poids

      t.timestamps
    end
  end
end
