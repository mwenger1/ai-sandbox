class SiteLocation < ApplicationRecord
  belongs_to :site_organization

  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "id", "name", "site_organization_id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["site_organization"]
  end
end
