*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ./config/env.robot

*** Variables ***
${app_url}    http://localhost

*** Keywords ***
login role giao vien
    Create Webdriver    driver_name=Chrome
    Maximize Browser Window
    Go To    url=${app_url}
    Input Text    locator=id_username    text=giao_vien
    Input Text    locator=id_password    text=minh
    Click Button    locator=//button[text()="Login"]
    
login role truong khoa
    Create Webdriver    driver_name=Chrome
    Maximize Browser Window
    Go To    url=${app_url}
    Input Text    locator=id_username    text=truong_khoa
    Input Text    locator=id_password    text=minh
    Click Button    locator=//button[text()="Login"]
    
login role hoi dong truong
    Create Webdriver    driver_name=Chrome
    Maximize Browser Window
    Go To    url=${app_url}
    Input Text    locator=id_username    text=hoi_dong_truong
    Input Text    locator=id_password    text=minh
    Click Button    locator=//button[text()="Login"]
    