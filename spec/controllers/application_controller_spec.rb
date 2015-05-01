require 'rails_helper'

describe ApplicationController do

describe "employer should be able to accept" do
  before(:each) do
    @user = User.create(email: 'example@example.com', username: 'user1', name:'F_L', id:1, password:'12345678',is_employer: true)
    sign_in @user
    # employer=FactoryGirl.create(:employer)
    # @user.employer = employer
    @job = FactoryGirl.create(:job)
    @app=FactoryGirl.create(:application)
  end
  it "Accept Application" do
  	patch :accept, :id=>1
    @app.reload
    expect(@app.accepted).to eq(true)
  end
  it "Decline Application" do
    patch :decline, :id=>1
    expect(response).to redirect_to(Job.find(1))
  end
end



end