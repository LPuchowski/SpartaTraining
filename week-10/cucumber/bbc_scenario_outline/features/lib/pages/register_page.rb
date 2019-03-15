require 'capybara'

class BbcRegisterPage
  include Capybara::DSL

  # REGISTER_PAGE_URL = ''
  # DAY_ID = ''
  # MONTH_ID = ''
  # YEAR_ID = ''
  # SUBMIT_BUTTON_ID = ''
  # EMAIL_ID = ''
  # PASSWORD_ID = ''
  # POSTCODE_ID = '#postcode-input'
  # GENDER_ID = 'gender-input'
  # OPT_OUT_ID = 'optOut'

  def visit_register_page
    visit("https://account.bbc.com/register/details/age?context=homepage&nonce=yOeJV2wm-OlMxSn-neOURG9hZP9lW1sGWWkY&ptrt=https%3A%2F%2Fwww.bbc.co.uk%2F&userOrigin=homepage")
  end

  def select_over_thirteen
    click_link("13 or over")
  end

  def enter_DOB(day, month, year)
    fill_in('day-input', with: day).text
    fill_in('month-input', with: month).text
    fill_in('year-input', with: year).text
  end

  def click_next_button
    click_button("submit-button")
  end

  def fill_in_email(email)
    fill_in("user-identifier-input", with: email).text
  end

  def email_field
    find("#user-identifier-input")
  end

  def fill_in_password(password)
    fill_in("password-input", with: password).text
    # fill_in("password-input", with: :tab).text
  end

  def password_field
    find("#password-input")
    # find_field('Password')
  end

  def check_error_message
    find("#form-message-password").text
  end

  def check_email_error_message
    find("#form-message-email").text
  end

end
