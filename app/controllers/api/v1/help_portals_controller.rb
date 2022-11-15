module Api
  module V1
    class HelpPortalsController < ApplicationController
      def index
        @help_portals = HelpPortal.all
        render json: { data: @help_portals, description: render_to_string(partial: "index.html.erb", locals: {help_portals: @help_portals }),  message: "All Help services", success: true}, status: :ok
      end
    end
  end
end
