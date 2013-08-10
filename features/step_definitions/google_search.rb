require 'selenium-webdriver'
#this is a new comment
Before do
 @driver = Selenium::WebDriver.for :firefox
end
After do
  @driver.quit
end

Given(/^user is on search page$/) do
  @driver.get "http://google.com"
end
When(/^user searches for cheese$/) do
  element = @driver.find_element :name => "q"
  element.send_keys "Cheese!"
  element.submit
end
Then(/^the results page title contains cheese$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until { @driver.title.downcase.start_with? "cheese!" }

  puts "Page title is #{@driver.title}"
end