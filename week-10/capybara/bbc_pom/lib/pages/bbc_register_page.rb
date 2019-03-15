class BBCResgisterPage
  include Capybara::DSL

  REGISTER_PAGE_URL = 'https://account.bbc.com/register/details/age?context=homepage&nonce=yOeJV2wm-OlMxSn-neOURG9hZP9lW1sGWWkY&ptrt=https%3A%2F%2Fwww.bbc.co.uk%2F&userOrigin=homepage'
  DAY_ID = '#day-input'
  MONTH_ID = '#month-input'
  YEAR_ID = '#year-input'
  SUBMIT_BUTTON_ID = 'submit-button'
  EMAIL_ID = '#user-identifier-input'
  PASSWORD_ID = '#password-input'
  POSTCODE_ID = '#postcode-input'
  GENDER_ID = 'gender-input'
  OPT_OUT_ID = 'optOut'


  def visit_resgister_page
    visit(REGISTER_PAGE_URL)
  end

  def fill_in_day input
    fill_in(DAY_ID, with: input)
  end

  def fill_in_month input
    fill_in(MONTH_ID, with: input)
  end

  def fill_in_year input
    fill_in(YEAR_ID, with: input)
  end

  def click_sign_in
    click_button(SUBMIT_BUTTON_ID)
  end

  def fill_in_email input
    fill_in(EMAIL_ID, with: input)
  end

  

end
