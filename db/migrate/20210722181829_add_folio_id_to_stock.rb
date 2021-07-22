class AddFolioIdToStock < ActiveRecord::Migration[6.0]
  def change
    add_column :stocks, :folio_id, :integer
  end
end
