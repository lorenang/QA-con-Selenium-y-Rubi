#Autor: Lorena Gomez
#Caso de prueba: Visualizar las criptomonedas con su precio actual y su fluctuacion en  el ultimo año
require "selenium-webdriver"
browser = Selenium::WebDriver.for :chrome
begin 
    browser.get('https://nomics.com/')
    browser.manage.timeouts.implicit_wait = 1500
    browser.manage.window.maximize
    
    anio = browser.find_element(:xpath, '//*[@id="__next"]/div[1]/div[2]/div[2]/div[2]/a[4]')
    anio.click
    
    sleep(20)
    browser.quit
rescue => e
    e
end
