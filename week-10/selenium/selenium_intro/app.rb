require 'selenium-webdriver'

chrome_driver = Selenium::WebDriver.for :chrome

chrome_driver.get('https://www.toolsqa.com/automation-practice-form/')

sleep 3

# chrome_driver.find_element(:link_text, 'Partial Link Test').click
#
# sleep 5

chrome_driver.find_element(:name, 'firstname').send_keys 'first_name'

sleep 3

for i in 0..6 do
  experience = chrome_driver.find_element(:id, "exp-#{i}").click
end

sleep 3
