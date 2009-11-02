class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.integer :family_id
      t.integer :food_id
      t.boolean :attending

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
