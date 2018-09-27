*** Settings ***
Resource   ../Pages/publish_accordion_page.robot
Library    Selenium2Library
Library     ../libraries/login_lib.py
Library     ../libraries/chapter_lib.py


*** Test Cases ***
#****Method to publish the article
Publish the new Article
    Publish new Article