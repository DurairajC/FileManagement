class CreateFileManagements < ActiveRecord::Migration[6.1]
  def change
    create_table :file_managements do |t|
      t.string :title
      t.text :description
      t.string :attachment

      t.timestamps
    end
  end
end
