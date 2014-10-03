class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.boolean :attending
      t.string :name
    end
  end
end
