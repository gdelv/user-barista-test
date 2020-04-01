class CreateBarista < ActiveRecord::Migration[6.0]
  def change
    create_table :barista do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :password
      t.boolean :barista

      t.timestamps
    end
  end
end
