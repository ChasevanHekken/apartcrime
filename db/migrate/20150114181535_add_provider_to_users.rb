class AddProviderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :twitter_id, :string
    add_column :users, :prof_image, :string
  end
end
