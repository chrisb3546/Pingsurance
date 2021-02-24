class LeadsController < ApplicationController
    before_action :find_lead, only: [:destroy] 
    def index
        @leads = Lead.all
        @lead = Lead.new
    end


    def create
        @lead = Lead.new(lead_params)
        
        respond_to do |format|
            if @lead.save
                @lead.send_sms(@lead.clean_number, @lead.note)
                format.js 
            else
                format.js
                format.json { render json: @lead.errors, status: :unprocessable_entity }
            end
        end
    end

   
    def destroy
        @lead.destroy
        respond_to do |format|
            format.js
            format.html
        end
    end

    private
    def lead_params
        params.require(:lead).permit(:first_name, :last_name, :phone_number, :note)
    end

    def find_lead
        @lead = Lead.find_by(id: params[:id])
    end
end
