class Homepage

  def initialize driver
    @driver = driver
  end

  def check_homepage_displayed

    @driver.find_element(:id, 'protect.budgetwatch:id/action_settings').displayed?

  end

end
