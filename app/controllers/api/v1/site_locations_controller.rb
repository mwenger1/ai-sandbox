module Api
  module V1
    class SiteLocationsController < ApplicationController
      before_action :authenticate
      before_action :set_site_location, only: [:show, :update, :destroy]

      def index
        @site_locations = SiteLocation.all
        render json: @site_locations
      end

      def show
        render json: @site_location
      end

      def create
        @site_location = SiteLocation.new(site_location_params)

        if @site_location.save
          render json: @site_location, status: :created
        else
          render json: @site_location.errors, status: :unprocessable_entity
        end
      end

      def update
        if @site_location.update(site_location_params)
          render json: @site_location
        else
          render json: @site_location.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @site_location.destroy
        head :no_content
      end

      private

      def set_site_location
        @site_location = SiteLocation.find(params[:id])
      end

      def site_location_params
        params.require(:site_location).permit(:name, :address, :site_organization_id)
      end
    end
  end
end
