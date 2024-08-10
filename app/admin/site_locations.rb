ActiveAdmin.register SiteLocation do
  permit_params :name, :address, :site_organization_id

  index do
    selectable_column
    id_column
    column :name
    column :address
    column :site_organization
    column :created_at
    actions
  end

  filter :name
  filter :address
  filter :site_organization
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :address
      f.input :site_organization
    end
    f.actions
  end
end
