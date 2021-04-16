*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    openTheBrowser
Suite Teardown  closeAllBrowser


*** Variables ***

*** Test Cases ***
Employee Profile
    set selenium implicit wait    50
    loginAlaskaERP
    Employee Profile
*** Keywords ***
Employee Profile
    click link    link:HR
    click link    link:Employee Profile
    click button    xpath://button[contains(.,'Add')]
    input text    id:name   Muhammad asad
    #choose file    css=.img-fluid   D://asad.jpeg
    input text    id:cnic   33104-7667319-3
    input text    id:phone  3065025802
    input text    id:email  se.muhammadasadattari@gmail.com
    input text    id:address    Faisalabad, the city of pleasure
    input text    id:username   employee@alaskaerp.com
    input text    id:password   1234
    input text    id:code   1234
    #joining date
    click element    id:joining_date__value_
    click element    css:.focus
    #designation
    #click element    xpath://input[@type='search']
    #click element    xpath://li[contains(.,'Marisa Goldner')]

    # weekend-off
    click element    xpath:(//input[@type='search'])[2]
    click element    xpath://li[contains(.,'Tuesday')]

    #shift
    click element    xpath:(//input[@type='search'])[3]
    click element    xpath://li[contains(.,'Full Shift')]

    #frenchises
    click element    xpath:(//input[@type='search'])[4]
    click element    xpath=//li[contains(.,'Alexys West')]

    #rating
    input text    id:rating     5

    #yes or no
    click element    xpath://span[contains(.,'Yes')]

    #role
    click element    xpath:(//input[@type='search'])[5]
    click element    xpath://li[contains(.,'Admin')]

