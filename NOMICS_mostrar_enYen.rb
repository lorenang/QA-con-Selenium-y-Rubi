#Autor: Lorena Gomez
#Caso de prueba: Visualizar las criptomonedas con su precio actual en YEN JAPONES
require "selenium-webdriver"
browser = Selenium::WebDriver.for :chrome
begin 
    browser.get('https://nomics.com/')
    browser.manage.timeouts.implicit_wait = 1500
    browser.manage.window.maximize
    
    #desplegar menu de monedas
    menu = browser.find_element(:xpath, '//*[@id="__next"]/div[1]/div[2]/div[2]/div[4]/div[2]/div')
    menu.click

    #seleccionar moneda
    moneda = browser.find_element(:xpath, '//*[@id="__next"]/div[1]/div[2]/div[2]/div[4]/div[2]/div/div/div[3]/div/div[2]/div[1]/div[1]/ul/li[4]/a')
    moneda.click
    
    sleep(15)
    browser.quit
rescue => e
    e
end