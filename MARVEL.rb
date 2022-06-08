# TPF.Caso_03.Magali.rb
#Caso_03.(Agregar unidad, llenando solamente el campo requerido)
#Debe estar creado el campo requerido

require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome

driver.get("https://developer.marvel.com")

driver.manage.timeouts.implicit_wait = 500
driver.manage.window.maximize #maximiza la ventana

#logueo
iniciarSesion = driver.find_element(:xpath, '//*[@id="user-menu-tab"]')
iniciarSesion.click

email = driver.find_element(:xpath, '//*[@id="did-ui-view"]/div/section/section/form/section/div[1]/div/label/span[2]/input')
email.click
email.send_keys('magaant18@gmail.com')

password = driver.find_element(:xpath, '//*[@id="did-ui-view"]/div/section/section/form/section/div[2]/div/label/span[2]/input')
password.click
password.send_keys('CONpol18')

sigIn= driver.find_element(:xpath, '//*[@id="did-ui-view"]/div/section/section/form/section/div[3]')
sigIn.click

sleep(15)
driver.quit