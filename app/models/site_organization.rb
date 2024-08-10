class SiteOrganization < ApplicationRecord
  has_many :site_locations

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "name", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["site_locations"]
  end
end
