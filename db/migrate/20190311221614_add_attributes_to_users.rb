class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :photo, :string
    add_column :users, :birthday_date, :string
    add_column :users, :residence_address, :string
    add_column :users, :phone_number, :string
    add_column :users, :gender, :string
    add_column :users, :languages, :string
    add_column :users, :description, :text
    add_column :users, :emergency_contact, :string
  end
end
