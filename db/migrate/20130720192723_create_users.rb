class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true
      t.string :status
      # t.timestamps
    end
  end

  def down
  end
end
