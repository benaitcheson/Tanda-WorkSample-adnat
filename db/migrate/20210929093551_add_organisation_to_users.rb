class AddOrganisationToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :organisation_id, :integer
    add_column :users, :name, :string
  end
end
