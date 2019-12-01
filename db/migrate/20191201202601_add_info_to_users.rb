class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :birthday, :date
    add_column :users, :gender, :string
  end
end
