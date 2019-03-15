require 'selenium-webdriver'

class SeleniumQAToolsForm

  FORM_URL = 'https://www.toolsqa.com/automation-practice-form/'

  def initialize
    # Set up the driver fro chrome
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(FORM_URL)
  end

  def input_firstname text
    @chrome_driver.find_element(:name, 'firstname').send_keys(text)
  end

  def input_lastname text
    @chrome_driver.find_element(:name, 'lastname').send_keys(text)
  end

  def select_sex_value value
    @chrome_driver.find_element(:id, "sex-#{value}").click
  end

  def select_experience
    for value in 0..6 do
      exp = @chrome_driver.find_element(:id, "exp-#{value}").click
    end
  end

  def input_date date
    @chrome_driver.find_element(:id, 'datepicker').send_keys(date)
  end

  def select_profession value
    @chrome_driver.find_element(:id, "profession-#{value}").click
  end

  def select_automation_tool value
    @chrome_driver.find_element(:id, "tool-#{value}").click
  end

  def select_continent
    element = @chrome_driver.find_element(:id, "continents")
    options = element.find_elements(:tag_name, "option")
    options.each do |option|
      option.click
    end
  end

  def select_command
    element = @chrome_driver.find_element(:id, "selenium_commands").click
    options = element.find_elements(:tag_name, "option")
    options.each do |option|
      option.click
    end
  end

  def submit
    @chrome_driver.find_element(:id, "submit").click
  end

end

x = SeleniumQAToolsForm.new
x.visit_practice_form
x.input_firstname 'Louis'
sleep 1
x.input_lastname 'Puchowski'
sleep 1
x.select_sex_value "0"
sleep 1
x.select_experience
sleep 1
x.input_date "09/02/1997"
sleep 1
x.select_profession "1"
sleep 1
x.select_automation_tool "2"
sleep 1
x.select_continent
sleep 1
x.select_command
sleep 1
x.submit
sleep 5
