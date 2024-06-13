# require 'rails_helper'

# RSpec.describe "all_secrets_friends/index", type: :view do
#   before(:each) do
#     assign(:all_secrets_friends, [
#       AllSecretsFriend.create!(
#         name: "Name",
#         email: "Email",
#         draw_create: false,
#         draw: nil
#       ),
#       AllSecretsFriend.create!(
#         name: "Name",
#         email: "Email",
#         draw_create: false,
#         draw: nil
#       )
#     ])
#   end

#   it "renders a list of all_secrets_friends" do
#     render
#     cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
#     assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
#     assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
#     assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
#     assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
#   end
# end
