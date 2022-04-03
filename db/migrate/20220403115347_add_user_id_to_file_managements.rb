class AddUserIdToFileManagements < ActiveRecord::Migration[6.1]
  def change
    add_column :file_managements, :user_id, :int
  end
end
