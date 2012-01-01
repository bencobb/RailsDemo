class AddAuthor < ActiveRecord::Migration
  def up
    add_column :posts, :author_first, :string
    add_column :posts, :author_last, :string
  end

  def down
    remove_column :posts, :author_first
    remove_column :posts, :author_last
  end
end
