class JobsController < InheritedResources::Base

  private

    def job_params
      params.require(:job).permit(:name, :description, :employer_id, :employee_id, :address_line_1, :address_line_2, :city, :state, :zipcode, :compensation, :position)
    end
end

