require 'selenium-webdriver'

Before do
  #@driver = Selenium::WebDriver.for :firefox
end
After do
  @driver.quit
end




Given(/^user is on yahoo search page$/) do
  @driver.get "http://yahoo.com"

end
When(/^user searches for google$/) do
  @driver.find_element(:name, "p").send_keys("google")
  @driver.find_element(:id, "search-submit").click


end
Then(/^the results page title contains google$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until { @driver.title.downcase.start_with? "google" }
end
