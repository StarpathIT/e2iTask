require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :fname => "",
      :lname => "",
      :email => "",
      :phone => "",
      :city => ""
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_fname[name=?]", "user[fname]"
      assert_select "input#user_lname[name=?]", "user[lname]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_phone[name=?]", "user[phone]"
      assert_select "input#user_city[name=?]", "user[city]"
    end
  end
end
