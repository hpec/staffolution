class JobsController < InheritedResources::Base

  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]
  before_filter :set_employer

  def new
    @job = Job.new
    @employer_id = @employer.id
    @job.address_line_1 = @employer.address_line_1
    @job.address_line_2 = @employer.address_line_2
    @job.city = @employer.city
    @job.state = @employer.state
    @job.zipcode = @employer.zipcode
  end

  private

    def job_params
      params.require(:job).permit(:name, :description, :address_line_1, :address_line_2, :city, :state, :zipcode, :compensation, :position, :employer_id)
    end

    def set_employer
      if current_user.is_employer?
        if current_user.employer.nil?
          flash[:error] = "You have to create your employer profile first!"
          redirect_to root_path
        end
        @employer = current_user.employer
      end
    end
end

