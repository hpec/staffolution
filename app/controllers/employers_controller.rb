class EmployersController < ApplicationController
  respond_to :html

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_employer, only: [:show, :edit, :update, :destroy, :vote]

  # GET /employers/1
  # GET /employers/1.json
  def show
  end

  # GET /employers/new
  def new
    @employer = Employer.new
    @employer.email = current_user.email
  end

  # GET /employers/1/edit
  def edit
  end

  # POST /employers
  # POST /employers.json
  def create
    @employer = Employer.new(employer_params)
    @employer.user = current_user

    if @employer.save
      @employer.user.profile_created = true
      @employer.user.save
      redirect_to @employer, notice: 'Employer was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /employers/1
  # PATCH/PUT /employers/1.json
  def update
    if @employer.update(employer_params)
      redirect_to @employer, notice: 'Employer was successfully updated.'
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

    @employer.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employer
      @employer = Employer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employer_params
      params.require(:employer).permit(:name, :zipcode, :phone, :website, :email, :address_line_1, :address_line_2, :city, :state, :office_type)
    end
end
