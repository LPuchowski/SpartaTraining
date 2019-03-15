Given("I am on the BBC home page") do
  bbc_homepage.visit_home_page
end

Given("I move to the sign in page") do
  bbc_homepage.click_sign_in_link
  sleep 3
end

When("I proceed to register") do
  bbc_sign_in_page.click_register_link
  sleep 1
end

When("I select I am over {int}") do |int|
  int = int
  bbc_register_page.select_over_thirteen
  sleep 1
end

When("I input my DOB") do
  bbc_register_page.enter_DOB '09', '02', '1997'
  bbc_register_page.click_next_button
  sleep 1
end

When(/^I input the necessary details with the password details (.*)$/) do |int|
  bbc_register_page.fill_in_password int
  bbc_register_page.password_field.send_keys :tab
  sleep 1
end

Then(/^I receive the corresponding error (.*)$/) do |error|
  expect(bbc_register_page.check_error_message).to eq error
end

When(/^I input the necessary details with the email details (.*)$/) do |email|
  bbc_register_page.fill_in_email email
  bbc_register_page.email_field.send_keys :tab
  sleep 1
end
Then(/^I receive the corresponding email error (.*)$/) do |error|
  expect(bbc_register_page.check_email_error_message).to eq error
end
