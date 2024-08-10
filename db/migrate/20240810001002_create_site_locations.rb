class CreateSiteLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :site_locations do |t|
      t.string :name
      t.string :address
      t.references :site_organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
