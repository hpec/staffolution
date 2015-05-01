require 'rails_helper'

# # This spec was generated by rspec-rails when you ran the scaffold generator.
# # It demonstrates how one might use RSpec to specify the controller code that
# # was generated by Rails when you ran the scaffold generator.
# #
# # It assumes that the implementation code is generated by the rails scaffold
# # generator.  If you are using any extension libraries to generate different
# # controller code, this generated spec may or may not pass.
# #
# # It only uses APIs available in rails and/or rspec-rails.  There are a number
# # of tools you can use to make these specs even more expressive, but we're
# # sticking to rails and rspec-rails APIs to keep things simple and stable.
# #
# # Compared to earlier versions of this generator, there is very limited use of
# # stubs and message expectations in this spec.  Stubs are only used when there
# # is no simpler way to get a handle on the object needed for the example.
# # Message expectations are only used when there is no simpler way to specify
# # that an instance is receiving a specific message.

RSpec.describe EmployersController, :type => :controller do
  describe 'vote' do
    before(:each) do
      sign_in FactoryGirl.create(:user)
    end
    it 'should be successful' do
      employer = FactoryGirl.create(:employer)
      get :vote, :id=>1,:direction=>"like"
      expect(response).to redirect_to(action: :index)
    end
    it 'should not be successful' do
      employer = FactoryGirl.create(:employer)
      expect { get :vote, :id=>1,:direction=>"what"
        }.to raise_error
    end
  end
  describe 'create' do
    it 'should create a new employer' do
      EmployersController.stub(:create).and_return(double('Employer'))
      post :create, {:email=> 'user@example.com', :username=> 'user1', :name=>'F_L', :id=>1, :password=>'12345678',:phone => 1234567898, :address_line_1 => 'sdnfskjdnfkj', :city => 'berkeley', :state =>'CA', :zipcode=>94704}
    end
  end
#   # This should return the minimal set of attributes required to create a valid
#   # Employer. As you add validations to Employer, be sure to
#   # adjust the attributes here as well.
#   let(:valid_attributes) {
#     skip("Add a hash of attributes valid for your model")
#   }

#   let(:invalid_attributes) {
#     skip("Add a hash of attributes invalid for your model")
#   }

#   # This should return the minimal set of values that should be in the session
#   # in order to pass any filters (e.g. authentication) defined in
#   # EmployersController. Be sure to keep this updated too.
#   let(:valid_session) { {} }

#   describe "GET show" do
#     it "assigns the requested employer as @employer" do
#       employer = Employer.create! valid_attributes
#       get :show, {:id => employer.to_param}, valid_session
#       expect(assigns(:employer)).to eq(employer)
#     end
#   end

#   describe "GET new" do
#     it "assigns a new employer as @employer" do
#       get :new, {}, valid_session
#       expect(assigns(:employer)).to be_a_new(Employer)
#     end
#   end

#   describe "GET edit" do
#     it "assigns the requested employer as @employer" do
#       employer = Employer.create! valid_attributes
#       get :edit, {:id => employer.to_param}, valid_session
#       expect(assigns(:employer)).to eq(employer)
#     end
#   end

  describe "POST create" do
    describe "with valid params" do
      before(:each) do
        sign_in FactoryGirl.create(:user)
      end
      it "creates a new Employer" do
        expect {
          post :create, :employer =>{:email=> 'user@example.com', :username=> 'user1', :name=>'F_L', :id=>1, :password=>'12345678',:phone => 1234567898, :address_line_1 => 'sdnfskjdnfkj', :city => 'berkeley', :state =>'CA', :zipcode=>94704,:contact_person=>'fda',:industry=>'ssf'}
        }.to change(Employer, :count).by(1)
      end
      it "assigns a newly created employer as @employer" do
        post :create, :employer =>{:email=> 'user@example.com', :username=> 'user1', :name=>'F_L', :id=>1, :password=>'12345678',:phone => 1234567898, :address_line_1 => 'sdnfskjdnfkj', :city => 'berkeley', :state =>'CA', :zipcode=>94704,:contact_person=>'fda',:industry=>'ssf'}
        expect(assigns(:employer)).to be_a(Employer)
        expect(assigns(:employer)).to be_persisted
      end

      it "redirects to the created employer" do
        post :create, :employer =>{:email=> 'user@example.com', :username=> 'user1', :name=>'F_L', :id=>1, :password=>'12345678',:phone => 1234567898, :address_line_1 => 'sdnfskjdnfkj', :city => 'berkeley', :state =>'CA', :zipcode=>94704,:contact_person=>'fda',:industry=>'ssf'}
        expect(response).to redirect_to(Employer.last)
      end
    end

    describe "with invalid params" do
      before(:each) do
        sign_in FactoryGirl.create(:user)
      end

      it "re-renders the 'new' template" do
        post :create, :employer => {:email=> 'user', :username=> 'user1', :name=>'F_L', :id=>1, :password=>'12345678',:phone => 1234567898, :address_line_1 => 'sdnfskjdnfkj', :city => 'berkeley', :state =>'CA', :zipcode=>94704,:contact_person=>'fda',:industry=>'ssf'}
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
#       let(:new_attributes) {
#         skip("Add a hash of attributes valid for your model")
#       }
      before(:each) do
        sign_in FactoryGirl.create(:user)
      end
      it "updates the requested employer" do
        employer = FactoryGirl.create(:employer)
        put :update, {:id => 1, :employer => {:email=> 'user@example.com', :username=> 'user1', :name=>'F_L', :id=>1, :password=>'12345678',:phone => 1234567898, :address_line_1 => 'sdnfskjdnfkj', :city => 'berkeley', :state =>'CA', :zipcode=>94704,:contact_person=>'fda',:industry=>'ssf'}}
        employer.reload
        expect(employer.email).to eq('user@example.com')
      end

#       it "assigns the requested employer as @employer" do
#         employer = Employer.create! valid_attributes
#         put :update, {:id => employer.to_param, :employer => valid_attributes}, valid_session
#         expect(assigns(:employer)).to eq(employer)
#       end

      it "redirects to the employer" do
        employer = FactoryGirl.create(:employer)
        put :update, {:id => 1, :employer => {:email=> 'user@example.com', :username=> 'user1', :name=>'F_L', :id=>1, :password=>'12345678',:phone => 1234567898, :address_line_1 => 'sdnfskjdnfkj', :city => 'berkeley', :state =>'CA', :zipcode=>94704,:contact_person=>'fda',:industry=>'ssf'}}
        expect(response).to redirect_to(employer)
      end
    end

    describe "with invalid params" do
      before(:each) do
        sign_in FactoryGirl.create(:user)
      end
      # it "assigns the employer as @employer" do
      #   employer = Employer.create! valid_attributes
      #   put :update, {:id => employer.to_param, :employer => invalid_attributes}, valid_session
      #   expect(assigns(:employer)).to eq(employer)
      # end

      it "re-renders the 'edit' template" do
        employer = FactoryGirl.create(:employer)
        put :update, {:id => 1, :employer => {:email=> 'user', :username=> 'user1', :name=>'F_L', :id=>1, :password=>'12345678',:phone => 1234567898, :address_line_1 => 'sdnfskjdnfkj', :city => 'berkeley', :state =>'CA', :zipcode=>94704,:contact_person=>'fda',:industry=>'ssf'}}
        expect(response).to render_template("edit")
      end
    end
  end

end
