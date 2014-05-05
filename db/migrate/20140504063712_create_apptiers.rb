class CreateApptiers < ActiveRecord::Migration
  def change
    create_table :apptiers do |t|
      t.string :name
      t.string :link
      t.string :description
      t.integer :webtier_id

      t.timestamps
    end
  end
end
