class CreateCovidCases < ActiveRecord::Migration[6.0]
  def change
    create_table :covid_cases do |t|
      t.bigint :amount
      t.bigint :death
      t.bigint :suspect
      t.bigint :cured
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
