class CreateServers < ActiveRecord::Migration
  def self.up
    create_table :servers do |t|
      t.string :name
      t.integer :customer_id
      t.string :password
      t.string :ip_address
      t.string :operative_system
      t.string :os_version
      t.timestamps
    end
  end

  def self.down
    drop_table :servers
  end
end
