require 'capybara'

class BbcHomePage
  include Capybara::DSL

  # HOMEPAGE_URL = 'https://www.bbc.co.uk/'
  # SIGN_IN_LINK_ID = '#idcta-link'
  # SIGN_IN_TEXT_ID = '#idcta-username'

  def visit_home_page
    visit("https://www.bbc.co.uk/")
  end

  def sign_in_link
    find("#idcta-link")
  end

  def click_sign_in_link
    sign_in_link.click
  end

end
