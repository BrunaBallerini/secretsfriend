# frozen_string_literal: true

# rubocop:disable Style/HashSyntax, Lint/MissingCopEnableDirective

require 'faker'

20.times do
  email = Faker::Internet.email
  password = Faker::Internet.password
  title = Faker::Company.bs
  min_value = Faker::Number.decimal(l_digits: 2).to_s
  max_value = Faker::Number.decimal(l_digits: 2).to_s
  date_draws = Faker::Date.in_date_period.to_s
  date_present = Faker::Date.in_date_period.to_s
  description = Faker::WorldCup.team

  User.create!(email: email,
               password: password,
               password_confirmation: password)

  Draw.create!(title: title,
               min_value: min_value,
               max_value: max_value,
               date_draws: date_draws,
               date_present: date_present,
               description: description,
               user: User.all.first)
end
