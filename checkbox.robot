*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${check1}   xpath=(//div[@id="Content"]//following::*[self::input or self::select])[16]
${check2}   xpath=(//div[@id="Content"]//following::*[self::input or self::select])[17]
*** Test Cases ***
handling checkbox

  Open Browser  https://petstore.octoperf.com/actions/Catalog.action  chrome
  Set Selenium Speed    0.3s
  Maximize Browser Window

  Click Link    xpath=//div[@id="Menu"]//descendant::a[2]

  Click Link    xpath=//div[@id="Content"]//descendant::a

  Select Checkbox    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[16]

  Unselect Checkbox    xpath=(//div[@id="Content"]//following::*[self::input or self::select])[17]

  Checkbox Should Be Selected    ${check1}
  
  Checkbox Should Be Selected    ${check1}

  Checkbox Should Not Be Selected    ${check2}
  
  Checkbox Should Not Be Selected    ${check2}
  

  Close Browser
