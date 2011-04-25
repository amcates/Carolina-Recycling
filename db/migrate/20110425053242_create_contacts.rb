class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :work_phone
      t.string :cell_phone
      t.string :email
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
