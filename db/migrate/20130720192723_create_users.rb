class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true
    end
  end

  def down
  end
end
