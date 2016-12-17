class AddTag < ActiveRecord::Migration
  def change
    add_column :friends, :tag, :integer
  end
end
