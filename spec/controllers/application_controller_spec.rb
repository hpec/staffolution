require 'rails_helper'

describe ApplicationController do

describe "User not signed in" do
  it "redirects" do
  	visit new_job_path
  	response.code.should == "302"
  end
  it "should not redirect" do
  	user = FactoryGirl.create(:user)
    sign_in user
  	visit new_job_path
  	response.code.should == "200"
  end
end
end