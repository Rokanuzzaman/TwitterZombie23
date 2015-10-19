class CreateUserFollows < ActiveRecord::Migration
  def self.up
    create_table :user_follows do |t|
      t.integer :user_id
      t.integer :foolwer_id
      t.date :following_date

      t.timestamps
    end
  end

  def self.down
    drop_table :user_follows
  end
end
