class AddColumnsToPhotos < ActiveRecord::Migration
  def change
		change_table :photos do |t|
      t.column :description, :string
      t.column :content_type, :string
      t.column :filename, :string
      t.column :binary_data, :binary
    end
  end
end
