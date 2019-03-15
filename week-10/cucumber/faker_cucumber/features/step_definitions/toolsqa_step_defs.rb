Given("I can access the toolsqa form") do
  visit('/')
end

When("I enter relevant data") do
  fill_in('firstname', with: first_name)
  fill_in('lastname', with: last_name)
  choose 'sex-0'
  choose 'exp-3'
  fill_in('datepicker', with: date)
end

Then("the form will be completed") do
end
