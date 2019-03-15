require 'selenium-webdriver'

class SpartaRegistration

  attr_accessor :registration_url, :signed_up_url

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @registration_url = 'https://crispyjourney.herokuapp.com/'
  end

  def visit_registration_site
    @chrome_driver.get(@registration_url)
  end

  def get_current_url
    @chrome_driver.current_url
  end

  def input_first_name_field(text)
    @chrome_driver.find_element(:id, 'firstName').send_keys text
  end

  def get_first_name_field
    @chrome_driver.find_element(:id, 'firstName').attribute('value')
  end

  def input_last_name_field(text)
    @chrome_driver.find_element(:id, 'lastName').send_keys text
  end

  def get_last_name_field
    @chrome_driver.find_element(:id, 'lastName').attribute('value')
  end

  def input_age(text)
    @chrome_driver.find_element(:css, 'input[placeholder="Enter Age"]').send_keys text
  end

  def get_age
    @chrome_driver.find_element(:css, 'input[placeholder="Enter Age"]').attribute('value')
  end

  def input_date_of_birth(text)
    @chrome_driver.find_element(:name, 'dob').send_keys text
  end

  def get_date_of_birth
    @chrome_driver.find_element(:name, 'dob').attribute('value').split('-').reverse!.join("/")
  end

  def select_gender gender
    @chrome_driver.find_element(:css, 'label["customRadioInLine1"]').click
  end

  def is_gender_selected
    @chrome_driver.find_element(:id, 'customRadioInLine1').attribute('value')
  end

  def input_degree(text)
    @chrome_driver.find_element(:css, 'input[placeholder="Enter Degree"]').send_keys text
  end

  def get_degree
    @chrome_driver.find_element(:css, 'input[placeholder="Enter Degree"]').attribute('value')
  end

  def select_university
    element = @chrome_driver.find_element(:id, "inputUni")
    options = element.find_elements(:tag_name, "option")
    options.each do |option|
      option.click
    end
  end

  def is_a_university_selected
    @chrome_driver.find_element(:id, "inputUni").attribute('value')
  end

  def input_address(text)
    @chrome_driver.find_element(:css, 'input[placeholder="1234 Main St"]').send_keys text
  end

  def get_address
    @chrome_driver.find_element(:css, 'input[placeholder="1234 Main St"]').attribute('value')
  end

  def input_address_2(text)
    @chrome_driver.find_element(:css, 'input[placeholder="Apartment, studio, or floor"]').send_keys text
  end

  def get_address_2
    @chrome_driver.find_element(:css, 'input[placeholder="Apartment, studio, or floor"]').attribute('value')
  end

  def input_city(text)
    @chrome_driver.find_element(:id, "inputCity").send_keys text
  end

  def get_city
    @chrome_driver.find_element(:id, "inputCity").attribute('value')
  end

  def select_county
    element = @chrome_driver.find_element(:id, "inputCounty")
    options = element.find_elements(:tag_name, "option")
    rand = rand(1...options.length)
    options[rand].click
  end

  def is_county_selected
    @chrome_driver.find_element(:id, "inputCounty").text.include? "South"
  end

  def input_postcode(text)
    @chrome_driver.find_element(:id, "inputPostcode").send_keys text
  end

  def get_postcode
    @chrome_driver.find_element(:id, "inputPostcode").attribute('value')
  end

  def input_email(text)
    @chrome_driver.find_element(:id, "inputemailaddress").send_keys text
  end

  def get_input_email
    @chrome_driver.find_element(:id, "inputemailaddress").attribute('value')
  end

  def input_skills(text)
    @chrome_driver.find_element(:id, "exampleFormControlTextarea1").send_keys text
  end

  def get_input_skills
    @chrome_driver.find_element(:id, "exampleFormControlTextarea1").attribute('value')
  end

  def input_phone_number(text)
    @chrome_driver.find_element(:id, "exampleFormControlInput1").send_keys text
  end

  def get_input_phone_number
    @chrome_driver.find_element(:id, "exampleFormControlInput1").attribute('value')
  end

  def input_linkedIn_URL(text)
    @chrome_driver.find_element(:css, 'input[placeholder="Enter LinkedIn  url"]').send_keys text
  end

  def get_input_linkedIn_URL
    @chrome_driver.find_element(:css, 'input[placeholder="Enter LinkedIn  url"]').attribute('value')
  end

  def input_upload_file(text)
    @chrome_driver.find_element(:name, "cv").send_keys(text)
    sleep 5
  end

  def get_input_file
  end

  def input_SDET_stream
    @chrome_driver.find_element(:css, 'label[for="streamRadioInline1"]').click
  end

  def get_input_SDET_stream
    @chrome_driver.find_element(:css, 'label[for="streamRadioInline1"]').enabled?
  end

  def input_DevOps_stream
    @chrome_driver.find_element(:css, 'label[for="streamRadioInline2"]').click
  end

  def get_input_DevOps_stream
    @chrome_driver.find_element(:css, 'label[for="streamRadioInline2"]').enabled?
  end

  def input_terms_conditions
    @chrome_driver.find_element(:id, 'terms').click
  end

  def get_input_terms_conditions
    @chrome_driver.find_element(:id, 'terms').attribute('value')
  end

  def get_slide_experience
  end

  def click_sign_in
  end
end
