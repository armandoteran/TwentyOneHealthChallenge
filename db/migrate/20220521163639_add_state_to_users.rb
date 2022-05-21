class AddStateToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :state, null: true, foreign_key: true
  end
end
