*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    openTheBrowser
Suite Teardown  closeAllBrowser

*** Variables ***

*** Test Cases ***

login test
    loginAlaskaERP
    sleep   5

*** Keywords ***

