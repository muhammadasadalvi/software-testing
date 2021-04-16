*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${url}      https://demo.alaskaerp.com/branch
${browser}      chrome

*** Keywords ***

# it is inital step for all
openTheBrowser
    open browser    ${url}      ${browser}
    maximize browser window

# for login to system
loginAlaskaERP
    Input Text  id:email    employee@alaskaerp.com      clear=True
    Input Text  id:password     Hello2021
    Click Element   xpath://*[@id="__layout"]/div/div/div/div/div/div/div/form/button

# closing step of test
closeAllBrowser
    close all browsers