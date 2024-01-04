class CreateTodoemployees < ActiveRecord::Migration[7.1]
  def change
    create_table :todoemployees do |t|
      t.string :management_id
      t.text :todo

      t.timestamps
    end
  end
end
