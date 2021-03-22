class AddPostCodeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :post_code, :integer
  end
end
