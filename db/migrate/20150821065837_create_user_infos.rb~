class CreateUserInfos < ActiveRecord::Migration
  def self.up
    create_table :user_infos do |t|
      t.integer :user_id
      t.string :email
      t.string :full_name
      t.string :nickname
      t.date :date_of_birth
      t.string :gender
      t.string :profile_image_url
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :user_infos
  end
end
