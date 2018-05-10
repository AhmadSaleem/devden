class AddColumnNameToEnquiries < ActiveRecord::Migration[5.2]
  def change
    add_column :enquiries, :name, :string
  end
end
