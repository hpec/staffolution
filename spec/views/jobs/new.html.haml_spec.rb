require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      :name => "MyString",
      :description => "MyText",
      :employer => nil,
      :employee => nil,
      :address_line_1 => "MyString",
      :address_line_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => "MyString",
      :compensation => "MyString",
      :position => "MyString"
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_name[name=?]", "job[name]"

      assert_select "textarea#job_description[name=?]", "job[description]"

      assert_select "input#job_employer_id[name=?]", "job[employer_id]"

      assert_select "input#job_employee_id[name=?]", "job[employee_id]"

      assert_select "input#job_address_line_1[name=?]", "job[address_line_1]"

      assert_select "input#job_address_line_2[name=?]", "job[address_line_2]"

      assert_select "input#job_city[name=?]", "job[city]"

      assert_select "input#job_state[name=?]", "job[state]"

      assert_select "input#job_zipcode[name=?]", "job[zipcode]"

      assert_select "input#job_compensation[name=?]", "job[compensation]"

      assert_select "input#job_position[name=?]", "job[position]"
    end
  end
end
