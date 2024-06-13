# require 'rails_helper'

# RSpec.describe "all_secrets_friends/new", type: :view do
#   before(:each) do
#     assign(:all_secrets_friend, AllSecretsFriend.new(
#       name: "MyString",
#       email: "MyString",
#       draw_create: false,
#       draw: nil
#     ))
#   end

#   it "renders new all_secrets_friend form" do
#     render

#     assert_select "form[action=?][method=?]", all_secrets_friends_path, "post" do

#       assert_select "input[name=?]", "all_secrets_friend[name]"

#       assert_select "input[name=?]", "all_secrets_friend[email]"

#       assert_select "input[name=?]", "all_secrets_friend[draw_create]"

#       assert_select "input[name=?]", "all_secrets_friend[draw_id]"
#     end
#   end
# end
