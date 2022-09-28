module Api
  module V1
    class HelpPortalsController < ApplicationController
      def index
        @help_portals = HelpPortal.all
        render json: { data: @help_portals, message: "All Help services"}, status: :ok
      end

    end
  end
end
