Given("I am on the Club Sandwich home page") do
  visit('localhost:9292/')
end

When(/^I click on a sandwich (.*)$/) do |sandwich|
  # find(:href, '/1')
  # click_link(find(:href, '/1'))
  # all(:css, 'a')[0].click
  click_link(sandwich)
end


When("click the edit button") do
  click_button("Edit Sandwich")
end

When("change the title and description") do
  fill_in :placeholder => 'Name of Sandwich', :with => 'hello'
  fill_in :name => 'description', :with => 'hello again'
end

When("click the Save Sandwich button") do
  click_button('Save Sandwich')
  sleep 2
end

Then("The sandwich updates with the new values") do
  expect(find(:xpath, "//h1").text).to eq 'hello'
  expect(find(:xpath, "//cite").text).to eq 'hello again'
end

When("I click on the Make Your Own link") do
  click_link("Make your own")
end

When("enter a title and description") do
  fill_in :placeholder => 'Name of Sandwich', :with => 'new'
  fill_in :name => 'description', :with => 'hello again'
end

Then("the sandwich is added to the list") do
  expect(all(:css, 'a')[-1].text).to eq 'new'
end
