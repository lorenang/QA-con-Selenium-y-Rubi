#Autor: Lorena Gomez
#Caso de prueba: Visualizar las criptomonedas con su precio actual y su fluctuacion en la ultima semana (7 dias)
require "selenium-webdriver"
browser = Selenium::WebDriver.for :chrome
begin 
    browser.get('https://nomics.com/')
    browser.manage.timeouts.implicit_wait = 1500
    browser.manage.window.maximize
    
    semana = browser.find_element(:xpath, '//*[@id="__next"]/div[1]/div[2]/div[2]/div[2]/a[2]')
    semana.click

    #Con xpath completo
    #semana = browser.find_element(:xpath, 'html/body/div/div[1]/div[2]/div[2]/div[2]/a[2]')
    #semana.click
    
    sleep(15)
    browser.quit
rescue => e
    e
end
