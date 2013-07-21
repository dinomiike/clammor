class CreateGroups < ActiveRecord::Migration
  def up
    create_table :groups do |t|
      t.string :name
      t.string :motto
      t.references :user
    end
  end

  def down
  end
end
