class CreateSiteOrganizations < ActiveRecord::Migration[7.1]
  def change
    create_table :site_organizations do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
