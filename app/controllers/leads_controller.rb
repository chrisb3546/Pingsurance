class LeadsController < ApplicationController
    before_action :find_lead, only: [:edit, :update, :destroy] 
    def index
        @leads = Lead.all
        @lead = Lead.new
    end

    def new
        @lead = Lead.new
    end

    def create
        
        @lead = Lead.new(lead_params)
        respond_to do |format|
            if @lead.save
            format.js 
            format.html { redirect_to @lead}
            else
                render :index
            end
        end
    end

    def destroy
        @lead.destroy
        redirect_to root_path
    end

    private
    def lead_params
        params.require(:lead).permit(:first_name, :last_name, :phone_number, :note)
    end

    def find_lead
        @lead = lead.find_by(id: params[:id])
    end
end
