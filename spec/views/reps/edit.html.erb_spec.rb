require 'rails_helper'

RSpec.describe "reps/edit", :type => :view do
  before(:each) do
    @rep = assign(:rep, Rep.create!(
      :rep_name => "MyString",
      :rep_type => "MyString",
      :rep_description => "MyText",
      :user => nil,
      :rep_email => "MyString",
      :rep_phone => "MyString",
      :rep_url => "MyString"
    ))
  end

  it "renders the edit rep form" do
    render

    assert_select "form[action=?][method=?]", rep_path(@rep), "post" do

      assert_select "input#rep_rep_name[name=?]", "rep[rep_name]"

      assert_select "input#rep_rep_type[name=?]", "rep[rep_type]"

      assert_select "textarea#rep_rep_description[name=?]", "rep[rep_description]"

      assert_select "input#rep_user_id[name=?]", "rep[user_id]"

      assert_select "input#rep_rep_email[name=?]", "rep[rep_email]"

      assert_select "input#rep_rep_phone[name=?]", "rep[rep_phone]"

      assert_select "input#rep_rep_url[name=?]", "rep[rep_url]"
    end
  end
end
