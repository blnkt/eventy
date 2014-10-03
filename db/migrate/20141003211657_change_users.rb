class ChangeUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :email
      t.string :image
      t.string :token
      t.datetime :expires_at
    end
  end
end
