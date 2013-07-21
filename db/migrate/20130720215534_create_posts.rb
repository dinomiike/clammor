class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.references :comment
      t.references :user
      # t.timestamps
    end
  end

  def down
  end
end
