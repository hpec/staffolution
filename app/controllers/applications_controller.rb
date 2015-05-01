class ApplicationsController < InheritedResources::Base

  def create
    @app = Application.new(:employee_id => current_user.employee.id, :job_id => params[:id])
    @app.save
    redirect_to Job.find(params[:id])
  end

    def application_params
      params.require(:application).permit(:employee_id, :job_id, :accepted)
    end
end

