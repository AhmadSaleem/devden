class AddColumnsToEnquiries < ActiveRecord::Migration[5.2]
  def change
    add_column :enquiries, :new_project, :boolean
    add_column :enquiries, :project_type, :integer
    add_column :enquiries, :service_required, :integer
    add_column :enquiries, :phone_number, :string
  end
end
