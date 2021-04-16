*** Settings ***

Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot

*** Variables ***

*** Test Cases ***
salesOrder1
    set selenium implicit wait    40 seconds
    salesOrder

*** Keywords ***

salesOrder
    openTheBowser
    loginAlaskaERP
    click link    xpath://*[@id="__layout"]/div/div[1]/div[2]/div/section[1]/div[1]/ul[2]/li/a
    sleep   2
    click link    xpath://*[@id="__layout"]/div/div[1]/div[2]/div/section[2]/div[1]/ul[1]/li/a
    sleep   10
    input text    id:customer_name    Muhammad Asad     clear=True
    input text    id:customer_phone    3065025802
    click button    xpath://*[@id="actions"]/div/div/button[1]
    click button    xpath://*[@id="main-table"]/tbody/tr[1]/th/button
    input text    xpath: //*[@id="__layout"]/div/div[1]/div[2]/main/div/div[1]/div[1]/div/div/div/input     dr.
    closeAllBrowser