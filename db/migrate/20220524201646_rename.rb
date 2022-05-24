class Rename < ActiveRecord::Migration[6.1]
  def change
    rename_column(:users, :fullname, :full_name)
  end
end
