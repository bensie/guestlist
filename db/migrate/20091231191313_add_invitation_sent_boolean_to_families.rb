class AddInvitationSentBooleanToFamilies < ActiveRecord::Migration
  def self.up
    add_column :families, :misc_checkbox, :boolean, :default => false
  end

  def self.down
    remove_column :families, :misc_checkbox
  end
end
