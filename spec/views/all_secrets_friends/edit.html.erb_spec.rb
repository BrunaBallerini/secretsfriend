# require 'rails_helper'

# RSpec.describe "all_secrets_friends/edit", type: :view do
#   let(:all_secrets_friend) {
#     AllSecretsFriend.create!(
#       name: "MyString",
#       email: "MyString",
#       draw_create: false,
#       draw: nil
#     )
#   }

#   before(:each) do
#     assign(:all_secrets_friend, all_secrets_friend)
#   end

#   it "renders the edit all_secrets_friend form" do
#     render

#     assert_select "form[action=?][method=?]", all_secrets_friend_path(all_secrets_friend), "post" do

#       assert_select "input[name=?]", "all_secrets_friend[name]"

#       assert_select "input[name=?]", "all_secrets_friend[email]"

#       assert_select "input[name=?]", "all_secrets_friend[draw_create]"

#       assert_select "input[name=?]", "all_secrets_friend[draw_id]"
#     end
#   end
# end
