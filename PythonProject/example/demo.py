from selenium import webdriver
from selenium.webdriver.common.keys import Keys
driver = webdriver.Firefox()
driver.get("www.facebook.com")
assert "Facebook" in driver.title
elemUSer =  driver.find_element_by_id("email")
elemUSer.send_keys("mooogli666@hotmail.com")
elemPass = driver.find_element_by_id("pass")
elemPass.send_keys("moglicito1234")
elemPass.send_keys(Keys.RETURN)
driver.close()