class AddStatus < ActiveRecord::Migration
  def up
    add_column :posts, :status, :string
  end

  def down
    remove_column :posts, :status, :string
  end
end
