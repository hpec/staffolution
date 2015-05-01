class EmployeesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_employee, only: [:show, :edit, :update, :destroy, :vote]

  respond_to :html

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
    @employee.email = current_user.email
    if current_user.connected_to_linkedin?
      linkedin_profile = current_user.linkedin_profiles.last
      @employee.first_name = linkedin_profile.first_name
      @employee.last_name = linkedin_profile.last_name
      @employee.phone = linkedin_profile.phone
      @employee.industry = linkedin_profile.industry
    end
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)
    @employee.user = current_user

    if @employee.save
      redirect_to @employee, notice: 'Employee was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    if @employee.update(employee_params)
      redirect_to @employee, notice: 'Employee was successfully updated.'
    else
      render action: 'edit'
    end
  end

  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @employee.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(
        :email,
        :phone,
        :zipcode,
        :first_name,
        :last_name,
        :certifications,
        :distance_to_travel,
        :days_available,
        :has_transportation,
        :industry,
        :school,
        :degree,
        :years_of_experience,
        :pay_per_hour,
        :bio)
    end
end
