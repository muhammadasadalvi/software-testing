*** Settings ***
Documentation   Product profile
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  openTheBrowser
Suite Teardown  closeAllBrowser


*** Variables ***
*** Test Cases ***

Product
    set selenium implicit wait    25
    loginAlaskaERP
    product modifier
    product category
    product sub category
    product unit
    Drug Category
    Line Item
    Packaging Type
    Drug Group
    Controlled Drug



*** Keywords ***
product Profile
    click link    link:Product
    click link    link:Product Profile
    click button    xpath://*[@id="__layout"]/div/div[1]/div[2]/main/div/div/div/div/div/div[2]/div/div/div/div[1]/div/div[2]/div/div/div/div[1]/div[2]/a/button
    click element    css:#vs1__combobox .vs__search
    click element    id:vs1__option-0
    input text    id:name   panadol
    input text    id:sku    pk-09898
    input text    id:generic_name   panadol
    click element    xpath://div[@id='vs2__combobox']/div/input
    click element    id:vs2__option-0
    input text    id:description    there is no description available for this product
    click element    xpath://div[7]/div/div/div/div[2]  #xpath://label[contains(.,'Discontinued')]
    input text    id:estimated_pack_cost    1000
    input text    id:estimated_pack_retail  2000
    input text    id:conversion_factor  10  clear=True
    click element    xpath://span[contains(.,'Calculate')]
    click element    id:vs13__option-1
    click element    xpath://span[contains(.,'Month')]
    click element   xpath://button[@id='submit']/i
    sleep   10

product modifier
    click link    link:Product
    click link    link:Product Modifier
    click button    xpath://button[contains(.,'Add')]
    input text    id:name   variation
    input text    id:price  1000
    click button    xpath://button[@type='submit']
    sleep    5

Product Category
     click link    link:Product
     click link    link:Product Category
     click button    xpath://button[contains(.,'Add')]
     input text    id:name  syrup
     click button    xpath://button[@type='submit']
     sleep  5

Product Sub Category
    click link    link:Product
    click link    link:Product Sub Category
    click button    xpath://button[contains(.,'Add')]
    click element    xpath://input[@type='search']
    click element    xpath://li[contains(.,'Tablets Caps')]
    input text    id:name   powder
    click button    xpath://button[@type='submit']
    sleep   5

Product Unit
    click link    link:Product
    click link    link:Product Unit
    click button    xpath://button[contains(.,'Add')]
    input text    id:name   ml
    input text    id:precision  120     clear=True
    click button    xpath://button[@type='submit']
    sleep   5

Drug Category
    click link    link:Product
    click link    link:Drug Category
    click button    xpath://button[contains(.,'Add')]
    input text    id:name   stomach
    input text    id:code   uy78878
    input text    id:description    there is nothing special inside stomach
    click button    xpath://button[@type='submit']
    sleep   5


Line Item
    click link    link:Product
    click link    link:Line Item
    click button    xpath://button[contains(.,'Add')]
    input text    id:name   surgical item
    input text    id:description    its about surgical items
    input text    id:child_dynamic_field_name   field
    click element    xpath://div[@id='vs2__combobox']/div/input
    # here is missing is required checkbox
    click element    xpath://li[contains(.,'Number')]
    click button    xpath://button[contains(.,'Submit')]
    sleep   5

Packaging Type
    click link    link:Product
    click link    link:Packaging Type
    click button    xpath://button[contains(.,'Add')]
    input text    id:name   box
    input text    id:description    nothign special
    click button    xpath://button[contains(.,'Submit')]
    sleep   5

Drug Group
    click link    link:Product
    click element    link:Drug Group
    click button    xpath://button[contains(.,'Add')]
    input text    id:name   Heart
    input text    id:description    it all about heart oh!
    click button    xpath://button[contains(.,'Submit')]
    sleep   5

Controlled Drug
    click link    link:Product
    click element    link:Controlled Drug
    click button    xpath://button[contains(.,'Add')]
    input text    id:class_name     Norcodics
    click element    xpath://label[contains(.,'Yes')]
    click button    xpath://button[contains(.,'Submit')]
    sleep    5

