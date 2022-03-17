class AddColumnToList < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :name, :string
  end
end
