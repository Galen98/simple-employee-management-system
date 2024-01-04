class CreateManagements < ActiveRecord::Migration[7.1]
  def change
    create_table :managements do |t|
      t.string :name_user
      t.string :address
      t.integer :age

      t.timestamps
    end
  end
end
