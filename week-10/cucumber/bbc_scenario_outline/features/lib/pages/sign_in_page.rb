require 'capybara'

class BbcSignInPage
  include Capybara::DSL

  # REGISTER_BUTTON_ID = '//a[contains(@href, \)'

  def visit_register_page
    # find(:xpath, REGISTER_BUTTON_ID)
  end

  def click_register_link
    click_link('Register now')
  end

end
