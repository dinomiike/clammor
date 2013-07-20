class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :content
      t.references :post
      t.references :user
      # t.timestamps
    end
  end

  def down
  end
end
