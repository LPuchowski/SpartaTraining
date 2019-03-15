require 'capybara'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session = Capybara::Session.new(:chrome)
session.visit("https://www.toolsqa.com/automation-practice-form/")

session.fill_in 'firstname', with: 'test'

session.choose 'exp-1'
session.choose 'sex-0'

session.find(:css, '#exp-4').click

session.select 'Africa', from: 'continents'

session.within(:css, '#continents') do

end
