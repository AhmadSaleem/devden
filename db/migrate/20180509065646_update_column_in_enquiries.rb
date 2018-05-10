class UpdateColumnInEnquiries < ActiveRecord::Migration[5.2]
  def change
    change_column :enquiries, :new_project, :boolean, default: false
  end
end
