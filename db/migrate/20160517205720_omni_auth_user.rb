class OmniAuthUser < ActiveRecord::Migration
  def change
    remove_column :users, :password_digest
    change_column :users, :email, :string, null: true

    add_column :users, :uid, :string, null:false       # for the unique user identifier from the provider
    add_column :users, :provider, :string, null:false   # for the provider name
  end
end
