Given("I am on the Yandex page") do
  visit("https://passport.yandex.com/registration?mode=register")
end

When("I enter account details") do
  fill_in('firstname', with: "Steve").text
  fill_in('lastname', with: "Jones").text
  fill_in('login', with: "steve.jones123454321").text
  fill_in('password', with: "F4c3book123").text
  fill_in('password_confirm', with: "F4c3book123").text
  find(:css, '.link_has-no-phone').send_keys :return
  sleep 2
end

Then("I am directed to the inbox") do
  pending # Write code here that turns the phrase above into concrete actions
end
