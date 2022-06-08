#Autor: Lorena Gomez
#Caso de prueba: Visualizar la pagina en MODO CLARO
require "selenium-webdriver"
browser = Selenium::WebDriver.for :chrome
begin 
    browser.get('https://nomics.com/')
    browser.manage.timeouts.implicit_wait = 1500
    browser.manage.window.maximize
    
    mode = browser.find_element(:xpath, '//*[@id="__next"]/div[1]/div[2]/div[2]/div[4]/div[3]')
    mode.click

    #Con xpath completo
    #mode = browser.find_element(:xpath, '/html/body/div/div[1]/div[2]/div[2]/div[4]/div[3]')
    #mode.click
    
    sleep(15)
    browser.quit
rescue => e
    e
end