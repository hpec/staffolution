require 'rails_helper'

RSpec.describe "jobs/show", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Address Line 1/)
    expect(rendered).to match(/Address Line 2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/Compensation/)
    expect(rendered).to match(/Position/)
  end
end
