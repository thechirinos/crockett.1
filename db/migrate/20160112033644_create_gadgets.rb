class CreateGadgets < ActiveRecord::Migration
  def change
    create_table :gadgets do |t|
      t.string :make
      t.string :model
      t.boolean :available
      t.datetime :checked_out
      t.datetime :checked_in
      t.string :location
      t.string :format
      t.string :os_version
      t.references :user, index: true

      t.timestamps
    end
  end
end
