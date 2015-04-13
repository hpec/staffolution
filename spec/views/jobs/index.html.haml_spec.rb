require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :name => "Name",
        :description => "MyText",
        :employer => nil,
        :employee => nil,
        :address_line_1 => "Address Line 1",
        :address_line_2 => "Address Line 2",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :compensation => "Compensation",
        :position => "Position"
      ),
      Job.create!(
        :name => "Name",
        :description => "MyText",
        :employer => nil,
        :employee => nil,
        :address_line_1 => "Address Line 1",
        :address_line_2 => "Address Line 2",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :compensation => "Compensation",
        :position => "Position"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Address Line 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line 2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Compensation".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
  end
end
