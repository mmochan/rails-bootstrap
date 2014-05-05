class CreateDbtiers < ActiveRecord::Migration
  def change
    create_table :dbtiers do |t|
      t.string :name
      t.string :link
      t.string :description
      t.integer :servicetier
      t.integer :apptier_id
      t.integer :webtier_id

      t.timestamps
    end
  end
end
