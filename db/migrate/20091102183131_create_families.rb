class CreateFamilies < ActiveRecord::Migration
  def self.up
    create_table :families do |t|
      t.string :name
      t.integer :people_count
      t.text :address
      t.string :phone
      t.string :email
      t.integer :group_id
      t.string :list

      t.timestamps
    end
  end

  def self.down
    drop_table :families
  end
end
