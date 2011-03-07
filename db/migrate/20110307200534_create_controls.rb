class CreateControls < ActiveRecord::Migration
  def self.up
    create_table :controls do |t|
      t.integer :server_id
      t.integer :customer_id
      t.integer :user_id
      t.string :file
      t.string :backup_file
      t.string :subject
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :controls
  end
end
