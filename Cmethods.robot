*** Settings ***
Library   SeleniumLibrary
*** Test Cases ***
is_displayed()

    Set Selenium Speed    .3s
    Open Browser    https://petstore.octoperf.com/actions/Catalog.action   chrome

    Maximize Browser Window

    Element Should Be Visible    xpath=//input[@name="keyword"]

is_selected()
    Click Link    xpath=//div[@id="Menu"]//descendant::a[2]

    Click Link    xpath=//div[@id="Content"]//descendant::a
    
    Select Checkbox    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[17]
    
    Checkbox Should Be Selected   xpath=(//div[@id="Content"]//following::*[self::input or self::select])[17]

is_enabled()
    Click Link    xpath=//div[@id="Menu"]//descendant::a[2]

    Click Link    xpath=//div[@id="Content"]//descendant::a
    
    Click Button    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[18]
    
    Element Should Be Enabled    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[18]
    


    Close Browser