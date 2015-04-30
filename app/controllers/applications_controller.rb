class ApplicationsController < InheritedResources::Base

  private

    def application_params
      params.require(:application).permit(:employee_id, :job_id, :accepted)
    end
end

