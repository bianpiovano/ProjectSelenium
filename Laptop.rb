require 'selenium-webdriver'
@browser = Selenium::WebDriver.for :chrome
@browser.get "https://www.demoblaze.com/"

# Registrarse

elementSign = @browser.find_element(:id, "signin2")
elementSign.click
sleep 2       
elementUser = @browser.find_element(:id, "sign-username")
elementUser.send_keys("biancaokay101bf")
elementPass = @browser.find_element(:id, "sign-password")
elementPass.send_keys("12345")
sleep 2
elementSignUp = @browser.find_elements(:class, "btn")
elementSignUp[3].click
sleep 2
@browser.switch_to.alert.accept
sleep 2

# Loguearse

elementLog = @browser.find_element(:id, "login2")
elementLog.click
sleep 2
elementUser2 = @browser.find_element(:id, "loginusername")
elementUser2.send_keys("biancaokay101bf")
elementPass2 = @browser.find_element(:id, "loginpassword")
elementPass2.send_keys("12345")
sleep 2
elementLogIn = @browser.find_elements(:class, "btn")
elementLogIn[5].click 
sleep 2

# Buscar Producto 

elementCategory = @browser.find_elements(:class, "list-group-item")
elementCategory[2].click
sleep 2 
elementLaptop = @browser.find_elements(:class, "card-title")
print elementLaptop[5].text 
