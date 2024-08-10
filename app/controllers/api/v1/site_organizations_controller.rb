module Api
  module V1
    class SiteOrganizationsController < ApplicationController
      before_action :set_site_organization, only: [:show, :update, :destroy]

      def index
        @site_organizations = SiteOrganization.all
        render json: @site_organizations
      end

      def show
        render json: @site_organization
      end

      def create
        @site_organization = SiteOrganization.new(site_organization_params)

        if @site_organization.save
          render json: @site_organization, status: :created
        else
          render json: @site_organization.errors, status: :unprocessable_entity
        end
      end

      def update
        if @site_organization.update(site_organization_params)
          render json: @site_organization
        else
          render json: @site_organization.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @site_organization.destroy
        head :no_content
      end

      private

      def set_site_organization
        @site_organization = SiteOrganization.find(params[:id])
      end

      def site_organization_params
        params.require(:site_organization).permit(:name, :description)
      end
    end
  end
end
