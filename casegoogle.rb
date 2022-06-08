require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
  
driver.get('https://google.com/')

driver.manage.timeouts.implicit_wait = 1000

search_box = driver.find_element(name: 'q')
search_button = driver.find_element(name: 'btnK')
  
search_box.send_keys('Selenium')
search_button.click
  
search_box = driver.find_element(name: 'q')
value = search_box.attribute('value')
expect(value).to eq('Selenium')
sleep(20)
driver.quit