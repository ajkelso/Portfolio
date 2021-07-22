class AddUserIdToFolio < ActiveRecord::Migration[6.0]
  def change
    add_column :folios, :user_id, :integer
  end
end
