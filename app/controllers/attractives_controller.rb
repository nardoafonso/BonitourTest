class AttractivesController < ApplicationController
    def create
        @company = Company.find(params[:company_id])
        @attractive = @company.attractives.create(attractives_params)
        redirect_to companies_path(@company)
    end

    def destroy
        @company = Company.find(params[:company_id])
        @attractive = @company.attractives.find(params[:id])
        @company.destroy
        redirect_to companies_path(@company)
    end
    
    private
    def attractives_params
        params.require(:attractive).permit(:name, :address, :duration, :capacity, :value)
    end
end
