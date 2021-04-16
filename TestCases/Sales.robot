*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    openTheBrowser
Suite Teardown  closeAllBrowser

*** Variables ***
*** Test Cases ***
Sales
    set selenium implicit wait    60
    loginAlaskaERP
    Sales

*** Keywords ***
Sales
    click link    link:Sales
    click link    link:Sales Order
    input text    name:customer_name    asad

