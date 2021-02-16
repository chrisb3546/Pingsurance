class LeadsController < ApplicationController
    before_action :find_lead, only: [:edit, :update, :destroy] 
    def index
        @leads = Lead.all
    end

    def new
        @lead = Lead.new
    end

    def create
        @lead = Lead.new(lead_params)

    end

    private
    def lead_params
        params.require(:lead).permit(:first_name, :last_name, :phone_number, :note)
    end

    def find_lead
        @lead = lead.find_by(id: params[:id])
    end
end
