class HomeController < ApplicationController
  def index
    @site_organizations = SiteOrganization.all
  end
end