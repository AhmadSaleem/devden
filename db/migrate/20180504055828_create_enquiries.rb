class CreateEnquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :enquiries do |t|
      t.string  :email
      t.string  :project_title
      t.integer :project_budget
      t.text    :project_description

      t.timestamps
    end
  end
end
