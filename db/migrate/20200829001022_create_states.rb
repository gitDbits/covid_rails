class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :uf
      t.string :name

      t.timestamps
    end
  end
end
