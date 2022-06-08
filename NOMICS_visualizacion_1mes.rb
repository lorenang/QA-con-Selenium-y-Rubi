#Autor: Lorena Gomez
#Caso de prueba: Visualizar las criptomonedas con su precio actual y su fluctuacion en el ultimo mes
require "selenium-webdriver"
browser = Selenium::WebDriver.for :chrome
begin 
    browser.get('https://nomics.com/')
    browser.manage.timeouts.implicit_wait = 1500
    browser.manage.window.maximize
    
    mes = browser.find_element(:xpath, '//*[@id="__next"]/div[1]/div[2]/div[2]/div[2]/a[3]')
    mes.click

    sleep(15)
    browser.quit
rescue => e
    e
end