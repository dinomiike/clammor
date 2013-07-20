class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.text :post
      t.references :comment
      t.references :user
      # t.timestamps
    end
  end

  def down
  end
end
