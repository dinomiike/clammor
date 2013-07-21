class CreateSubscriptions < ActiveRecord::Migration
  def up
    create_table :subscriptions do |t|
      t.datetime :renew_date
      t.references :group
    end
  end

  def down
  end
end
